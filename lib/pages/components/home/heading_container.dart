import 'package:flutter/material.dart';

class HomeHeading extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: width*0.04,),
        Icon(
          Icons.more_vert,
          color: Colors.white,
          size: width*0.1,
        ),
        SizedBox(width: width*0.05,),
        Text(
          "Quyo",
          style: TextStyle(
              fontSize: width*0.1,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0
          ),
        ),
      ],
    );
  }
}

