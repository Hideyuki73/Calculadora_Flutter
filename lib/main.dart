// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // implement createState
    return Main();
  }
}

class Main extends State<MainApp> {
  String result = '';
  TextEditingController controle = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                result, 
                style: TextStyle(fontSize: 30)
              ),
              TextButton(onPressed: () {
                onPressed('C');
                }, 
                 style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                 ),
                child: Text('C')),
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        onPressed('1');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('1')),
                  TextButton(
                      onPressed: () {
                        onPressed('2');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('2')),
                  TextButton(
                      onPressed: () {
                        onPressed('3');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('3')),
                      TextButton(
                      onPressed: () {
                        onPressed('=');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('=')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        onPressed('4');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('4')),
                  TextButton(
                      onPressed: () {
                        onPressed('5');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('5')),
                  TextButton(
                      onPressed: () {
                        onPressed('6');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('6')),
                      TextButton(
                      onPressed: () {
                        onPressed('+');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('+')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        onPressed('7');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('7')),
                  TextButton(
                      onPressed: () {
                        onPressed('8');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                        textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('8')),
                  TextButton(
                      onPressed: () {
                        onPressed('9');
                      },
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 30.0),
                          textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('9')),
                      TextButton(
                      onPressed: () {
                        onPressed('-');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('-')),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        onPressed('.');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('.')),
                  TextButton(
                      onPressed: () {
                        onPressed('0');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                        textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('0')),
                  TextButton(
                      onPressed: () {
                        onPressed('*');
                      },
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 30.0),
                          textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('*')),
                      TextButton(
                      onPressed: () {
                        onPressed('/');
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30.0),
                            textStyle: TextStyle(fontSize: 25)
                      ),
                      child: Text('/')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onPressed(String buttonText) {

    setState(() {
      if (buttonText == 'C') {
        result = '';
      } else if (buttonText == '=') {
        if(result.contains('+')){
          List<String> numbers = result.split('+');
          double firstValue = double.parse(numbers.first);
          double secondValue = double.parse(numbers.last);
          double res = firstValue + secondValue;

          result = res.toString();
        }else
        if(result.contains('-')){
          List<String> numbers = result.split('-');
          double firstValue = double.parse(numbers.first);
          double secondValue = double.parse(numbers.last);
          double res = firstValue - secondValue;

          result = res.toString();
        }
        if(result.contains('/')){
          List<String> numbers = result.split('/');
          double firstValue = double.parse(numbers.first);
          double secondValue = double.parse(numbers.last);
          double res = firstValue / secondValue;

          result = res.toString();
        }else
        if(result.contains('*')){
          List<String> numbers = result.split('*');
          double firstValue = double.parse(numbers.first);
          double secondValue = double.parse(numbers.last);
          double res = firstValue * secondValue;

          result = res.toString();
        }
      } else {
        result += buttonText;
      }
    });
  }
}