
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/setting/colors.dart';

import 'app.dart';
class appreview extends StatelessWidget {
  final App apps;
  const appreview(this.apps,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('คะแนน และ รีวิว',
                style: GoogleFonts.sarabun(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('ดู',
                style: GoogleFonts.sarabun(
                    fontSize: 12,
                    color: Colors.grey
                ),
              ),

            ],
          ),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(apps.score.toString(),
                style: GoogleFonts.sarabun(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if(apps.score >= 4.6 && apps.score <= 5.0)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                      ],
                    ),
                  if(apps.score >= 4.1 && apps.score <= 4.5)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star_half, size: 20, color: Colors.amber,),
                      ],
                    ),
                  if(apps.score >= 3.6 && apps.score <= 4.0)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                      ],
                    ),
                  if(apps.score >= 3.1 && apps.score <= 3.5)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star_half, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                      ],
                    ),
                  if(apps.score >= 2.6 && apps.score <= 3.0)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                      ],
                    ),
                  if(apps.score >= 2.1 && apps.score <= 2.5)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star_half, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                      ],
                    ),
                  if(apps.score >= 1.6 && apps.score <= 2.0)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                      ],
                    ),
                  if(apps.score >= 1.1 && apps.score <= 1.5)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star, size: 20, color: Colors.amber,),
                        Icon(Icons.star_half, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                      ],
                    ),
                  if(apps.score >= 0.0 && apps.score <= 1.0)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star_half, size: 20, color: Colors.amber,),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                        Icon(Icons.star, size: 20, color: Colors.grey.withOpacity(0.2),),
                      ],
                    ),
                  const SizedBox(height: 5),
                  Text("${apps.review.toString()} รีวิว",
                    style: GoogleFonts.sarabun(
                        fontSize: 12,
                        color: Colors.grey.withOpacity(0.7)
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.maxFinite,
            height: 40,
            child: ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: redbackgroud,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
              child: Text(
                'ติดตั้ง',
                style: GoogleFonts.sarabun(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
