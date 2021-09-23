import 'package:flutter/material.dart';

import 'Assignment7.dart';
import 'Operators.dart';
import 'Assignment9Screen1.dart';
import 'Assignment9Screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      /*darkTheme: ThemeData(
          primaryColor: Colors.black, scaffoldBackgroundColor: Colors.teal),*/
      theme: ThemeData(primaryColor: Colors.white),
      home: Screen1(),
    );
  }
}
