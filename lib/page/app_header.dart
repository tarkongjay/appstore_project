import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/page/app.dart';
import 'package:project/page/app_gallery.dart';
class appheader extends StatelessWidget {
  final App apps;
  const appheader(this.apps,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Row(
children: [
  Image.asset(apps.icon,width: 80,),
  const SizedBox(width: 15,),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(apps.name,
      style: GoogleFonts.sarabun(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(apps.type,
        style: GoogleFonts.sarabun(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      const SizedBox(height: 5,),
      Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.amber,
            size: 15,
          ),
          Text(
            apps.score.toString(),
            style: GoogleFonts.sarabun(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          const SizedBox(width: 30,),
          Icon(
            Icons.get_app,
            color: Colors.green,
            size: 15,
          ),
          Text(
            apps.download.toString(),
            style: GoogleFonts.sarabun(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    ],
  ),
],
      ),
    );
  }
}
