import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dicee App'),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int RightDiceNumber = 1;
//  var leftDiceNumber = 1;
  void changeDiceFace(){
    leftDiceNumber =Random().nextInt(6)+1;
    RightDiceNumber =Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//          flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      changeDiceFace();
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              )),
          Expanded(
//          flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    changeDiceFace();
                  });
                },
                child: Image.asset('images/dice$RightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}













/*
StatelessWidget
class DicePage extends StatelessWidget {
  int leftDiceNumber = 1;
//  var leftDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    leftDiceNumber =2;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//          flex: 1,
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FlatButton(
              onPressed: (){
                print('Left button got pressed.');
              },
                child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          )),
          Expanded(
//          flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: (){
                  print('Right button got pressed.');
                },
                  child: Image.asset('images/dice1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

 */
