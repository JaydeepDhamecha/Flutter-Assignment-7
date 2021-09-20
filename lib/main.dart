import 'package:flutter/material.dart';

import 'Assignment7.dart';
import 'Operators.dart';

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
      home: Assignment7(),
    );
  }
}
