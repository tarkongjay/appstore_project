import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/page/app.dart';
import 'package:project/page/detail.dart';
class apppop extends StatelessWidget {
  static List<App> listapp(){
    return[
      App("assets/images/paotung.png",
          "assets/images/paotung_logo.png",
          "เป๋าตัง - Paotang",
          "การเงิน",
          3.9,
          "1,341,836",
          "425,941",
          "เป๋าตัง ใบใหม่ ใช้งานง่าย ครอบคลุมทุกธุรกรรมการเงิน ไม่ต้องพกกระเป๋าตังรูปแบบเดิม ๆ อีกต่อไปใช้งานได้ทันทีเพียงมี รหัสผู้ใช้งาน Krungthai NEXT, หมายเลขบัตรเอทีเอ็ม/เดบิตกรุงไทย หรือ บัตรประจำตัวประชาชน ก็สามารถลงทะเบียนใช้งานเป๋าตังได้ รวมถึงสามารถใช้สิทธิตามมาตรการสนับสนุนจากภาครัฐ ผ่าน G-Wallet และลงทุนในพันธบัตรหน่วยละบาทกับวอลเล็ต สบม.ฟีเจอร์ G-Wallet สำหรับใช้สิทธิตามมาตรการสนับสนุนจากภาครัฐ ภายใต้โครงการต่างๆ เช่น เราเที่ยวด้วยกัน คนละครึ่ง",
          [
            "assets/images/paotung.png"
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
    ];
  }
  apppop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) =>
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => detail(listapp()[index]),
                  ),
                ),
                child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
                padding:  const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(listapp()[index].img),
                ),
            ),
          ),
              ),
          separatorBuilder: (_, index) => const SizedBox(width: 10,),
          itemCount: listapp().length),
    );
  }
}
