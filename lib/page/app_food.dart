import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/home/home.dart';
import 'package:project/page/detail.dart';
import 'package:project/setting/colors.dart';

import 'app.dart';
class foodapp extends StatelessWidget {
  static List<App> listnewapp(){
    return[
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
    ];
  }
  const foodapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
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
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Positioned(
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 25,
                    right: 25,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],

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
}
