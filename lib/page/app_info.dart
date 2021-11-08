import 'package:flutter/material.dart';
import 'package:project/page/app.dart';
import 'package:project/page/app_description.dart';
import 'package:project/page/app_gallery.dart';
import 'package:project/page/app_review.dart';

import 'app_header.dart';

class appinfo extends StatelessWidget {
  final App apps;
  const appinfo(this.apps,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          appheader(apps),
          appgallery(apps),
          appdecs(apps),
          appreview(apps),
        ],
      ),
    );
  }
}
