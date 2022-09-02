import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int RightDiceNumber = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              // padding: EdgeInsets.all(10),
              onPressed: () {
                setState(
                  () {
                    leftDiceNumber = Random().nextInt(6) + 1;
                  },
                );
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    RightDiceNumber = Random().nextInt(6) + 1;
                  },
                );
              },
              child: Image.asset('images/dice$RightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
