

import 'package:flutter/material.dart';
import 'package:project/home/home.dart';
import 'package:project/main.dart';
import 'package:project/setting/colors.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {

    super.initState();
    _navigatetopage();
  }
  _navigatetopage()async{
    await Future.delayed(Duration(milliseconds: 3600),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redbackgroud,
      body: Center(
        child: Container(
          child: Image(image: const AssetImage("assets/images/logo1.png"),
            height: 200.0,
            width: 200.0,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
