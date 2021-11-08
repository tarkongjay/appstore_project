import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/setting/colors.dart';

import 'app.dart';

class appdecs extends StatelessWidget {
  final App apps;
  const appdecs(this.apps,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Text(apps.desc,
          style: GoogleFonts.sarabun(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.grey.withOpacity(0.7),
          ),
        ),
    );
  }
}
