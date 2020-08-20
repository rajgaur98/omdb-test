import 'package:flutter/material.dart';
import 'package:omdb/pages/components/home/now_playing_component.dart';

class LowerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Positioned(
      bottom: 0,
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          width: width,
          height: width > height? width*0.25: width*0.5,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [(Color(0xff80ADFD)), (Color(0xff80ADFD))],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
          child: NowPlaying(),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 100);
    path.quadraticBezierTo(size.width, 50, size.width-50, 50);
    path.lineTo(50, 50);
    path.quadraticBezierTo(0, 50, 0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}
