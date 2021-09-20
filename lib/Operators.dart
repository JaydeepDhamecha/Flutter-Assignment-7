import 'package:flutter/material.dart';import 'package:get/get.dart';import 'extension.dart';class Operators extends StatefulWidget {  Operators({Key? key, required this.title}) : super(key: key);  final String title;  @override  __OperatorsPageState createState() => __OperatorsPageState();}class __OperatorsPageState extends State<Operators> {  final edtNumber1 = TextEditingController();  final edtNumber2 = TextEditingController();  String outputValue = "0";  @override  void dispose() {    edtNumber2.dispose();    edtNumber1.dispose();    super.dispose();  }  @override  Widget build(BuildContext context) {    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 25));    return Scaffold(      appBar: AppBar(        centerTitle: true,        title: Text(widget.title,            style: TextStyle(              color: Colors.orange,              fontSize: 20,            )),      ),      body: Center(        child: Column(          mainAxisAlignment: MainAxisAlignment.start,          children: <Widget>[            Padding(              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),              child: TextField(                decoration: const InputDecoration(                    border: OutlineInputBorder(), labelText: 'Enter first number'),                keyboardType: TextInputType.number,                controller: edtNumber1,              ),            ),            Padding(              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),              child: TextField(                decoration: const InputDecoration(                    border: OutlineInputBorder(), labelText: 'Enter second number'),                keyboardType: TextInputType.number,                controller: edtNumber2,              ),            ),            Container(              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),              alignment: Alignment.topLeft,              child: Text(                'Answer is = $outputValue ',                textAlign: TextAlign.center,                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),              ),            ),            Padding(                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),                child: Text(                  'Arithmetic Operators',                  textAlign: TextAlign.center,                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),                )),            Row(              mainAxisSize: MainAxisSize.min,              children: [                Padding(                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),                    child: ElevatedButton(                      style: style,                      onPressed: () {                        _clickButtonArithmetic("ADD");                      },                      child: const Text('+'),                    )),                Padding(                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),                  child: ElevatedButton(                    style: style,                    onPressed: () {                      _clickButtonArithmetic("MINUS");                    },                    child: const Text('-'),                  ),                ),                Padding(                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),                  child: ElevatedButton(                    style: style,                    onPressed: () {                      _clickButtonArithmetic("MULTIPLICATION");                    },                    child: const Text('*'),                  ),                ),                Padding(                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),                  child: ElevatedButton(                    style: style,                    onPressed: () {                      _clickButtonArithmetic("DIVISION");                    },                    child: const Text('/'),                  ),                ),              ],            ),            Padding(                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),                child: Text(                  'Equality Operators',                  textAlign: TextAlign.center,                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),                )),            Row(              mainAxisSize: MainAxisSize.min,              children: [                Padding(                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),                    child: ElevatedButton(                      style: style,                      onPressed: () {                        _clickButtonEquality("DOUBLE_EQUALS");                      },                      child: const Text('=='),                    )),                Padding(                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),                  child: ElevatedButton(                    style: style,                    onPressed: () {                      _clickButtonEquality("NOT_EQUALS");                    },                    child: const Text('!='),                  ),                ),              ],            ),            Padding(                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),                child: Text(                  'Comparison Operators',                  textAlign: TextAlign.center,                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),                )),            Row(              mainAxisSize: MainAxisSize.min,              children: [                Padding(                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),                    child: ElevatedButton(                      style: style,                      onPressed: () {                        _clickButtonComparison("LESS_THAN");                      },                      child: const Text('<'),                    )),                Padding(                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),                    child: ElevatedButton(                      style: style,                      onPressed: () {                        _clickButtonComparison("LESS_THAN_EQUALS");                      },                      child: const Text('<='),                    )),                Padding(                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),                  child: ElevatedButton(                    style: style,                    onPressed: () {                      _clickButtonComparison("GREATER_THAN ");                    },                    child: const Text('>'),                  ),                ),                Padding(                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),                    child: ElevatedButton(                      style: style,                      onPressed: () {                        _clickButtonComparison("GREATER_THAN_EQUALS");                      },                      child: const Text('>='),                    )),              ],            ),          ],        ),      ),    );  }  void _clickButtonArithmetic(String operators) {    if (edtNumber1.text.isNotEmpty || edtNumber2.text.isNotEmpty) {      var numberOne = double.parse(edtNumber1.text);      var numberTwo = double.parse(edtNumber2.text);      setState(() {        if (operators == "ADD") {          outputValue = numberOne.plus(numberTwo).toString();        } else if (operators == "MINUS") {          outputValue = numberOne.subtraction(numberTwo).toString();        } else if (operators == "MULTIPLICATION") {          outputValue = numberOne.times(numberTwo).toString();        } else {          outputValue = numberOne.division(numberTwo).toString();        }      });    } else {      Get.snackbar('Test', 'Please enter first or second number');    }  }  void _clickButtonEquality(String operators) {    if (edtNumber1.text.isNotEmpty || edtNumber2.text.isNotEmpty) {      var numberOne = double.parse(edtNumber1.text);      var numberTwo = double.parse(edtNumber2.text);      setState(() {        if (operators == "DOUBLE_EQUALS") {          if (numberOne == numberTwo) {            outputValue = "True";          } else {            outputValue = "False";          }        } else {          if (numberOne != numberTwo) {            outputValue = "True";          } else {            outputValue = "False";          }        }      });    } else {      Get.snackbar('Test', 'Please enter first or second number');    }  }  void _clickButtonComparison(String operators) {    if (edtNumber1.text.isNotEmpty || edtNumber2.text.isNotEmpty) {      var numberOne = double.parse(edtNumber1.text);      var numberTwo = double.parse(edtNumber2.text);      setState(() {        if (operators == "LESS_THAN") {          if (numberOne < numberTwo) {            outputValue = "True";          } else {            outputValue = "False";          }        } else if (operators == "LESS_THAN_EQUALS") {          if (numberOne <= numberTwo) {            outputValue = "True";          } else {            outputValue = "False";          }        } else if (operators == "GREATER_THAN") {          if (numberOne > numberTwo) {            outputValue = "True";          } else {            outputValue = "False";          }        } else {          if (numberOne >= numberTwo) {            outputValue = "True";          } else {            outputValue = "False";          }        }      });    } else {      Get.snackbar('Test', 'Please enter first or second number');    }  }}