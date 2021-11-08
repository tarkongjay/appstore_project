import 'package:flutter/material.dart';
import 'package:project/setting/colors.dart';


class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal:  25,
        vertical: 30,
      ),
      child: Stack(
        children: [
          TextField(
            cursorColor: red,
            decoration: InputDecoration(
              fillColor: const Color(0xFFF6F8FF),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 20,
              ),
              prefixIcon: const Icon(
                Icons.search_outlined,
                color: grey,
                size: 30,
              ),
              hintText: 'ค้นหาแอพพลิเคชั่น',
              hintStyle: TextStyle(
                fontSize: 12,
                color: Colors.grey.withOpacity(0.6),
              ),
            ),
          ),
          Positioned(
            bottom: 6,
              right: 10,
              child: Container(
                padding: const EdgeInsets.all(5),
               child: const Icon(
                 Icons.mic_outlined,
                 color: grey,
                 size: 25,
               ),
              ) ,
          ),
        ],
      ),
    );
  }
}
