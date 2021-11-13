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
