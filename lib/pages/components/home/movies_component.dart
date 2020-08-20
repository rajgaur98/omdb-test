import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:omdb/models/movie.dart';
import 'package:omdb/pages/components/next_page/playing_component.dart';
import 'package:omdb/services/service.dart';

class Movies extends StatefulWidget {
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {

  bool isLoading;
  List<Movie> movieList;
  Service service;

  void getMovies() async {
    setState(() {
      isLoading = true;
    });
    movieList = await service.getMovies();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    service = new Service();
    getMovies();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: width*0.55,
      child: Row(
        children: [
          SizedBox(width: width*0.05,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.music_note,
                color: Color(0xff80B4FD),
                size: width*0.07,
              ),
              Icon(
                Icons.nature,
                color: Color(0xff80B4FD),
                size: width*0.07,
              ),
              Icon(
                Icons.wb_sunny,
                color: Color(0xff80B4FD),
                size: width*0.07,
              ),
            ],
          ),
          SizedBox(width: width*0.05,),
          isLoading? CircularProgressIndicator(): Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movieList.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(width*0.1)),
                      ),
                      child: Container(
                        height: width*0.55,
                        width: width*0.55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(width*0.1)),
                          image: DecorationImage(
                            image: NetworkImage(movieList[index].poster),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(width*0.05),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    movieList[index].year,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: width*0.04
                                    ),
                                  ),
                                  SizedBox(height: width*0.01,),
                                  Text(
                                    movieList[index].title.substring(0, 10),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: width*0.05
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Playing(movie: movieList[index],),
                                  ));
                                },
                                child: Container(
                                  height: width*0.10,
                                  width: width*0.10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(width*0.10)),
                                    color: Color(0xff80ADFD),
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: width*0.05,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: width*0.02,),
                  ],
                );
              }
            ),
          )
        ],
      ),
    );
  }
}

