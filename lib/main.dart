import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('Challenge')),
          backgroundColor: Colors.orange,
        ),
        body: challenge(),
      ),
    ),
  );
}

class challenge extends StatefulWidget {
  @override
  _challengeState createState() => _challengeState();
}

class _challengeState extends State<challenge> {
  int challengeNumber = 1;
  void changeChallenge(){
    setState(() {
      challengeNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeChallenge();
                print('challenge pressed');
                
              }, child: Image.asset('images/ball$challengeNumber.png')
            ),
          ),
        ],
      ),
    );
  }
}
