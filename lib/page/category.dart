import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/page/categoryapp.dart';
import 'package:project/page/new_app.dart';
import 'package:project/page/pop_app.dart';
import 'package:project/setting/colors.dart';

class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);
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
          Container(
            height: 140,
            padding: const EdgeInsets.all(20),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) =>
                    Column(
                      children: [
                        InkWell(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => categoryapp(),
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: list[index]['color'] as Color,
                            ),
                            child: Icon(
                              list[index]['icon'] as IconData,
                              color: white,
                              size: 40,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text(list[index]['title'] as String,
                          style: GoogleFonts.sarabun(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                separatorBuilder: (_, index) => const SizedBox(width: 33,),
                itemCount: list.length),
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
