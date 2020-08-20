import 'package:flutter/material.dart';
import 'package:omdb/pages/components/home/heading_container.dart';
import 'package:omdb/pages/components/home/modes_component.dart';
import 'package:omdb/pages/components/home/movies_component.dart';
import 'package:omdb/pages/components/home/recent_component.dart';

class UpperContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [(Color(0xff8094FD)), (Color(0xff8094FD))],
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
      ),
      child: ListView(
        children: [
          SizedBox(height: height*0.05,),
          HomeHeading(),
          SizedBox(height: height*0.05,),
          Modes(),
          SizedBox(height: height*0.05,),
          Movies(),
          Recent(),
        ],
      ),
    );
  }
}
