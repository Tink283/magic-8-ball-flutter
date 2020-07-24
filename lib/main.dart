import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
      MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigo[900],
        ),
        body: Ball(),
      ),
    );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void changeball(){
    setState(() {
      ballNumber = Random().nextInt(4)+1;
      print('$ballNumber');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: (){
            changeball();
          },
          child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
