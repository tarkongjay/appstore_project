'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "8a599bd925815e5c10a6fb1dcf97c9ee",
"assets/assets/images/foodpanda.png": "d54d8a4bfef87a514de5cc7609204afd",
"assets/assets/images/foodpanda1.jpg": "445aa49f8aff103fbd5c1664e45fffc0",
"assets/assets/images/foodpanda2.jpg": "268e51edf9034b18f6e7f3cf8b85af37",
"assets/assets/images/foodpanda3.jpg": "04c081b273f29d8199ddd7ea1413db73",
"assets/assets/images/foodpanda4.jpeg": "6d09a79bb5f191147e730dce8d43c60b",
"assets/assets/images/foodpanda_logo.png": "b348ee712600687c20fe903f06f73a9d",
"assets/assets/images/line.png": "5fb20708f93a3331387a3e2252b2cdb3",
"assets/assets/images/line1.jpg": "f1631aa02cb3cf3133a967549df794c4",
"assets/assets/images/line2.jpg": "f5f1e1052a21bd6f70a69b54b685933b",
"assets/assets/images/line3.png": "04439c4d637d5a92b4ce3c5363683222",
"assets/assets/images/line_logo.png": "5a95f9d0c8ae78df151598b8097f260c",
"assets/assets/images/logo.png": "c958126f1d2fbfa06b6249d031148edf",
"assets/assets/images/logo1.png": "5556a38c25b414157b037aa28a7731e7",
"assets/assets/images/netflix.png": "39fc9ca7589357ebcbd4163dba33bd69",
"assets/assets/images/netflix_logo.png": "0eb045cab21192a5c2f90fffa6ab8460",
"assets/assets/images/paotung.png": "53d669fc1a9eab295ee72870ce3467e4",
"assets/assets/images/paotung_logo.png": "067437f36d249c53859083df17ed5f93",
"assets/assets/images/tiktok.png": "e461c6b221476e4e73d8cda3c97e2d68",
"assets/assets/images/tiktok1.png": "47fe0ca36a6bb99d4befc53e25a69881",
"assets/assets/images/tiktok2.jpg": "1086e28228acc9d151dacb232ab49081",
"assets/assets/images/tiktok3.jpg": "fce7d1b9d630ecf852d949456befb93c",
"assets/assets/images/tiktok_logo.png": "d5e793f249c9015cfd8686525f99786c",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "767aa0523299337480098e7ee01ee28d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "89e33dd20444161c70fddb9147097b6d",
"/": "89e33dd20444161c70fddb9147097b6d",
"main.dart.js": "ae56fde7a70ccc6f5456158ac0b5ee1c",
"manifest.json": "2db5f4680f879ee274da9109ab41acb0",
"version.json": "42cd419222f49a43138508d15d5dd3dc"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
