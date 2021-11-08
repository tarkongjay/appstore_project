import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/page/app.dart';
import 'package:project/page/app_info.dart';
import 'package:project/setting/colors.dart';

class detail extends StatelessWidget {
  final App apps;
  const detail(this.apps,{Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
         delegate: detailsilver(
             app: apps,
             Height: 360,
             round: 30),
          ),
          SliverToBoxAdapter(
            child: appinfo(apps),
          ),
        ],

      ),
    );
  }

}
class detailsilver extends SliverPersistentHeaderDelegate{
  final App app;
  final double Height;
  final double round;

  detailsilver({
    required this.app,
    required this.Height,
    required this.round,
  });

  @override
  Widget build(BuildContext context,double offset, bool over) {
    return Stack(
      children: [
        Image.asset(
          app.img,
          width:  MediaQuery.of(context).size.width,
          height: Height,
          fit:  BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: Positioned(
              child: GestureDetector(
                onTap: ()=> Navigator.of(context).pop(),
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
        ),
        Positioned(
          top: Height - round - offset,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: round,
            decoration: const BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            alignment: Alignment.center,
            child: Container(
              width: 60,
              height: 5,
              color: redbackgroud,
            ),
          ),
        )
      ],
    );
  }
  @override
  double get maxExtent => Height;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate old){
    return false;
  }
}
