import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/home/home.dart';
import 'package:project/page/app.dart';
import 'package:project/setting/colors.dart';

import 'detail.dart';

class apps extends StatefulWidget {
  const apps({Key? key}) : super(key: key);

  @override
  _appsState createState() => _appsState();
}
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
class _appsState extends State<apps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _BottomNavBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView.builder(
            itemCount: listnewapp().length,
            itemBuilder: (BuildContext context, int index) {
              var item = listnewapp()[index];
              return Card(
                margin: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => detail(item),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            item.icon,
                            width: 60.0,
                            height: 60.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.name,
                                style: GoogleFonts.sarabun(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:  CrossAxisAlignment.start,
                                    children: [
                                      Text(item.type,
                                        style: GoogleFonts.sarabun(
                                          color: Colors.grey.withOpacity(0.8),
                                        ),
                                      ),
                                      const SizedBox(height: 2,),
                                      _starnew1(item.score),
                                    ],
                                  ),
                                  _buttomnew1()
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),

    );
  }
  _buttomnew1(){
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        color: redbackgroud,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        'ติดตั้ง',
        style: GoogleFonts.sarabun(color: Colors.white),
      ),
    );
  }

  _starnew1(num score){
    return Row(
        children:[
          Icon(Icons.star, size: 15, color: Colors.amber,),
          Text(score.toString(),
            style: GoogleFonts.sarabun(
                fontSize: 12,
                fontWeight: FontWeight.bold
            ),
          ),
        ]
    );
  }

  Widget _BottomNavBar(){
    var _selectedBottomNavIndex = 1;
    return Container(
      color: const Color(0xfff6f8ff),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            selectedItemColor: redbackgroud,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedBottomNavIndex,
            onTap: (index) {
              setState(() {
                _selectedBottomNavIndex = index;
                if(_selectedBottomNavIndex == 0)
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
              });
            },
            items: [
              const BottomNavigationBarItem(
                label: 'หน้าหลัก',
                icon: Icon(
                  Icons.favorite,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
              BottomNavigationBarItem(
                label: 'แอป',
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: _selectedBottomNavIndex == 0 ? Colors.grey.withOpacity(0.2) : redbackgroud,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: _selectedBottomNavIndex ==0 ? Icon(
                    Icons.apps,
                    size: 30,
                    color: Colors.grey,
                  ):Icon(
                    Icons.apps,
                    size: 30,
                    color: Colors.white,
                  ) ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
