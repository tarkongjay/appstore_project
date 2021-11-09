import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/page/app_chat.dart';
import 'package:project/page/app_food.dart';
import 'package:project/page/app_fun.dart';
import 'package:project/page/app_payment.dart';
import 'package:project/page/categoryapp.dart';
import 'package:project/page/new_app.dart';
import 'package:project/page/pop_app.dart';
import 'package:project/setting/colors.dart';

import 'app.dart';

class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);
  List<App> listnewapp(){
    return[
      App("assets/images/netflix.png",
          "assets/images/netflix_logo.png",
          "Netflix",
          "บันเทิง",
          4.4,
          "13,546,423",
          "646,895",
          "ถ้าอยากรับชมซีรีส์และภาพยนตร์จากทั่วโลกที่ใครๆ ก็พูดถึง พบกับสุดยอดความบันเทิงทั้งหมดได้ที่ Netflix เรามีทั้งซีรีส์ ภาพยนตร์ สารคดี และผลงานสแตนด์อัพคอมเมดี้ระดับรางวัลการันตี",
          [
            "assets/images/netflix.png"
          ]
      ),
      App("assets/images/paotung.png",
          "assets/images/paotung_logo.png",
          "เป๋าตัง - Paotang",
          "การเงิน",
          3.9,
          "1,341,836",
          "425,941",
          "- ใช้จ่าย G-Wallet ตามสิทธิโครงการที่ร้านค้าถุงเงินทั่วประเทศ (ตามเงื่อนไขของโครงการ)",
          [
            "assets/images/paotung.png"
          ]
      ),
      App("assets/images/tiktok.png",
          "assets/images/tiktok_logo.png",
          "TikTok - วิดีโอคลิปสุดสนุก",
          "วีดีโอ",
          4.5,
          "41,892,123",
          "1,757,535",
          "TikTok เป็นโซเชียลมีเดียสำหรับการถ่ายวิดีโอสั้นที่มีเสียงเพลงประกอบเป็นหลัก มีเนื้อหาวิดีโอที่หลากหลายตอบโจทย์ทุกเพศทุกวัยและเป็นเวทีสำหรับคนที่มีความคิดสร้างสรรค์พร้อมที่ปลดปล่อยจินตนาการให้โลดแล่นและแสดงออกได้อย่างเต็มที่",
          [
            "assets/images/tiktok1.png",
            "assets/images/tiktok2.jpg",
            "assets/images/tiktok3.jpg",
            "assets/images/tiktok.png",
          ]
      ),
      App("assets/images/foodpanda.png",
          "assets/images/foodpanda_logo.png",
          "foodpanda - สั่งอาหาร",
          "อาหาร",
          4.0,
          "2,149,291",
          "124,631",
          "อยากกินของอร่อยเจ้าโปรดใช่มั้ย หรือลืมแวะซื้อของก่อนกลับบ้านล่ะ เราส่งอาหารและของกินของใช้ให้คุณแบบด่วนจี๋ – อยากได้อะไรสั่งเลย",
          [
            "assets/images/foodpanda1.jpg",
            "assets/images/foodpanda2.jpg",
            "assets/images/foodpanda3.jpg",
            "assets/images/foodpanda.png",
          ]
      ),
      App("assets/images/line.png",
          "assets/images/line_logo.png",
          "LINE: โทรและส่งข้อความฟรี",
          "พูดคุย",
          4.7,
          "13,463,624",
          "1,245,916",
          "LINE ได้เปลี่ยนแปลงวิธีการสื่อสารทั่วโลกให้คุณได้สนุกกับการรับส่งข้อความ การโทรแบบเสียงและแบบวิดีโอคอลฟรีจากทุกที่",
          [
            "assets/images/line1.jpg",
            "assets/images/line2.jpg",
            "assets/images/line3.png",
            "assets/images/line.png",
          ]
      ),
    ];
  }

  final list = [
    {
      'icon': Icons.chat_bubble,
      'color': red,
      'title': 'พูดคุย'
    },
    {
      'icon': Icons.payments,
      'color': green,
      'title': 'การเงิน'
    },
    {
      'icon': Icons.fastfood,
      'color': pupleblue,
      'title': 'อาหาร'
    },
    {
      'icon': Icons.emoji_emotions,
      'color': blue,
      'title': 'บันเทิง'
    },
    {
      'icon': Icons.widgets,
      'color': redbackgroud,
      'title': 'อื่นๆ'
    }
  ];

  var chenk = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          topLeft:  Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 140,
                padding: const EdgeInsets.all(20),
         child: Column(
               children: [
                 InkWell(
                   onTap: () => Navigator.of(context).push(
                     MaterialPageRoute(builder: (context) => chatapp(),
                     ),
                   ),
                   child: Container(
                     padding: const EdgeInsets.all(15),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: red,
                     ),
                     child: Icon(
                       Icons.chat_bubble,
                       color: white,
                       size: 40,
                     ),
                   ),
                 ),
                 const SizedBox(height: 10,),
                 Text('พูดคุย',
                   style: GoogleFonts.sarabun(
                     fontWeight: FontWeight.bold,
                     color: Colors.black.withOpacity(0.7),
                     fontSize: 15,
                   ),
                 )
               ],
         ),
              ),
              Container(
                height: 140,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => paymentapp(),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: green,
                        ),
                        child: Icon(
                          Icons.payments,
                          color: white,
                          size: 40,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text('การเงิน',
                      style: GoogleFonts.sarabun(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 140,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => foodapp(),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: blue,
                        ),
                        child: Icon(
                          Icons.fastfood,
                          color: white,
                          size: 40,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text('อาหาร',
                      style: GoogleFonts.sarabun(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 140,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => funapp(),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: pupleblue,
                        ),
                        child: Icon(
                          Icons.emoji_emotions,
                          color: white,
                          size: 40,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Text('บันเทิง',
                      style: GoogleFonts.sarabun(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
            title('ยอดนิยม'),
          apppop(),
          title('ใหม่'),
          newapp(),
        ],
      ),
    );
  }
  Widget title(String text){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      width: double.maxFinite,
      child: Text(
        text,style: GoogleFonts.sarabun(
          fontWeight: FontWeight.bold,
          fontSize: 20
      ) ,
      ),
    );
  }
}
