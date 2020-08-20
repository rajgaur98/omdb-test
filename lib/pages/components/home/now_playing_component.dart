import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NowPlaying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: height*0.06,),
        Row(
          children: [
            SizedBox(width: width*0.05,),
            Icon(
              CupertinoIcons.heart_solid,
              color: Colors.blue[200],
            ),
            SizedBox(width: width*0.05,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Meditation",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width*0.035
                  ),
                ),
                SizedBox(height: width*0.01,),
                Text(
                  "Open your heart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width*0.05,
                  ),
                ),
                SizedBox(height: width*0.03,),
                Container(
                  width: width*0.35,
                  child: LinearProgressIndicator(
                    value: 0.6,
                    minHeight: 3,
                    backgroundColor: Colors.white,
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.pink[100]),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  width: width*0.35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "9:20",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width*0.04,
                        ),
                      ),
                      Text(
                        "13:50",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width*0.04,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: width*0.2,),
            Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(width*0.05)),
              ),
              child: Container(
                width: width*0.2,
                height: width*0.275,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.all(Radius.circular(width*0.05)),
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: width*0.075,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

