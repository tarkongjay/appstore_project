import 'package:flutter/material.dart';
import 'package:project/page/categoryapp.dart';
import 'package:project/page/apps.dart';
import 'package:project/page/category.dart';
import 'package:project/page/search.dart';
import 'package:project/setting/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedBottomNavIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redbackgroud,
      body:SingleChildScrollView(
        child:  Center(
          child: Column(
            children: [
              const Search(),
              Category(),
            ],
          ),
        ),
      ) ,
      bottomNavigationBar: _BottomNavBar(),
    );
  }
  Widget _BottomNavBar(){
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
                 if(_selectedBottomNavIndex == 1)
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>apps()));
                });
            },
            items: [
              const BottomNavigationBarItem(
                label: 'หน้าหลัก',
                icon: Icon(
                  Icons.favorite,
                  size: 50,
                ),
              ),
              BottomNavigationBarItem(
                label: 'แอป',
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.apps,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

