import 'package:flutter/material.dart';
import 'package:omdb/pages/components/home/upper_container.dart';
import 'package:omdb/pages/components/home/lower_container.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          UpperContainer(),
          LowerContainer(),
        ],
      ),
    );
  }
}