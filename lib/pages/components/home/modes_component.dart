import 'package:flutter/material.dart';

class Modes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: width*0.3,
      width: width,
      child: Row(
        children: [
          SizedBox(width: width*0.05,),
          RotatedBox(
            quarterTurns: -1,
            child: Text(
              "MODE",
              style: TextStyle(
                  color: Color(0xff80B4FD),
                  fontWeight: FontWeight.bold,
                  fontSize: width*0.04,
              ),
            ),
          ),
          SizedBox(width: width*0.05,),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: width*0.025,),
                Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(width*0.05)),
                  ),
                  child: Container(
                    height: width*0.3,
                    width: width*0.3,
                    decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.all(Radius.circular(width*0.05)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: width*0.1,),
                        Container(
                          child: Icon(
                            Icons.sentiment_satisfied,
                            color: Colors.white,
                            size: width*0.07,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink[50],
                                offset: Offset(width*0.05, width*0.05),
                                blurRadius: width*0.05,
                                spreadRadius: width*0.03,
                              ),
                              BoxShadow(
                                color: Colors.pink[50],
                                offset: Offset(-width*0.03, -width*0.03),
                                blurRadius: width*0.05,
                                spreadRadius: width*0.03,
                              ),
                            ]
                          ),
                        ),
                        SizedBox(height: width*0.025,),
                        Text(
                          "Relax",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: width*0.04,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width*0.02,),
                Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(width*0.05)),
                  ),
                  child: Container(
                    height: width*0.3,
                    width: width*0.3,
                    decoration: BoxDecoration(
                      color: Color(0xff80ADFD),
                      borderRadius: BorderRadius.all(Radius.circular(width*0.05)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: width*0.1,),
                        Container(
                          child: Icon(
                            Icons.mood_bad,
                            color: Colors.white,
                            size: width*0.07,
                          ),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue[200],
                                  offset: Offset(width*0.05, width*0.05),
                                  blurRadius: width*0.05,
                                  spreadRadius: width*0.03,
                                ),
                                BoxShadow(
                                  color: Colors.blue[200],
                                  offset: Offset(-width*0.03, -width*0.03),
                                  blurRadius: width*0.05,
                                  spreadRadius: width*0.03,
                                ),
                              ]
                          ),
                        ),
                        SizedBox(height: width*0.025,),
                        Text(
                          "Anxiety",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: width*0.04
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width*0.02,),
                Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(width*0.05)),
                  ),
                  child: Container(
                    height: width*0.3,
                    width: width*0.3,
                    decoration: BoxDecoration(
                      color: Color(0xff80ADFD),
                      borderRadius: BorderRadius.all(Radius.circular(width*0.05)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: width*0.1,),
                        Container(
                          child: Icon(
                            Icons.mood,
                            color: Colors.white,
                            size: width*0.07,
                          ),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue[200],
                                  offset: Offset(width*0.05, width*0.05),
                                  blurRadius: width*0.05,
                                  spreadRadius: width*0.03,
                                ),
                                BoxShadow(
                                  color: Colors.blue[200],
                                  offset: Offset(-width*0.03, -width*0.03),
                                  blurRadius: width*0.05,
                                  spreadRadius: width*0.03,
                                ),
                              ]
                          ),
                        ),
                        SizedBox(height: width*0.025,),
                        Text(
                          "Sleep",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: width*0.04
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width*0.02,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

