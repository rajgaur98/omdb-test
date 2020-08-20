import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: width*0.25,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: width*0.05,),
          RotatedBox(
            quarterTurns: -1,
            child: Text(
              "RECENT",
              style: TextStyle(
                  color: Color(0xff80B4FD),
                  fontWeight: FontWeight.bold,
                  fontSize: width*0.04,
              ),
            ),
          ),
          SizedBox(width: width*0.07,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "5 min reading",
                    style: TextStyle(
                      color: Color(0xff80C9FD),
                      fontSize: width*0.035
                    ),
                  ),
                  SizedBox(width: width*0.025,),
                  Icon(
                    Icons.chrome_reader_mode,
                    color: Color(0xff80C9FD),
                    size: width*0.045,
                  ),
                ],
              ),
              Text(
                "Refresh Breathe",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width*0.04,
                ),
              ),
            ],
          ),
          SizedBox(width: width*0.35,),
          Icon(
            Icons.chevron_right,
            size: 50.0,
            color: Color(0xff80C9FD),
          ),
        ],
      ),
    );
  }
}

