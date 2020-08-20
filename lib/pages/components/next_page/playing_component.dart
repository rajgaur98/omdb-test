import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:omdb/models/movie.dart';

class Playing extends StatelessWidget {
  final Movie movie;
  Playing({this.movie});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff546FFE),
                Color(0xff5F78FE),
                Color(0xff6F85FE),
                Color(0xff7C91FF),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(width*0.05),
            child: Column(
              children: [
                SizedBox(height: width*0.15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff80ADFD),
                      size: width*0.1,
                    ),
                    Text(
                      "Now Playing",
                      style: TextStyle(
                        fontSize: width*0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.heart_solid,
                      color: Color(0xff80ADFD),
                      size: width*0.1,
                    ),
                  ],
                ),
                SizedBox(height: width*0.15,),
                Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(width*0.1)),
                  ),
                  child: Container(
                    height: 300,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(width*0.1)),
                      image: DecorationImage(
                        image: NetworkImage(movie.poster),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: width*0.1,),
                Text(
                  movie.type,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: width*0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: width*0.025,),
                Text(
                  movie.title.substring(0, 10),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width*0.06,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: width*0.06,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*0.02),
                  child: Container(
                    child: LinearProgressIndicator(
                      value: 0.6,
                      minHeight: width*0.015,
                      backgroundColor: Colors.white,
                      valueColor: new AlwaysStoppedAnimation<Color>(Colors.pink[100]),
                    ),
                  ),
                ),
                SizedBox(height: width*0.02,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "9:20",
                        style: TextStyle(
                          color: Color(0xff80ADFD),
                          fontSize: width*0.04,
                        ),
                      ),
                      Text(
                        "13:50",
                        style: TextStyle(
                          color: Color(0xff80ADFD),
                          fontSize: width*0.04,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: width*0.05,),
                Padding(
                  padding: EdgeInsets.only(bottom: width*0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.equalizer,
                        color: Colors.white,
                        size: width*0.08,
                      ),
                      Icon(
                        Icons.restore,
                        color: Colors.white,
                        size: width*0.08,
                      ),
                      Card(
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(width*0.05)),
                        ),
                        child: Container(
                          width: width*0.2,
                          height: width*0.2,
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.all(Radius.circular(width*0.05)),
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: width*0.08,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.update,
                        color: Colors.white,
                        size: width*0.08,
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: width*0.08,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

