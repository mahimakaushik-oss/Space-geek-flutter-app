import 'package:flutter/material.dart';

import 'HomePage.dart';



void main() => runApp(Space());

class Space extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'space_geek',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: HomePage(),

      debugShowCheckedModeBanner: false,
    );
  }
}

