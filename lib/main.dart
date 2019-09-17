import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        appBar: AppBar(
          title: Text('Throw the dice'),
          backgroundColor: Colors.teal,
        ),
        body: DiceAppBody(),
      ),
    ));

class DiceAppBody extends StatefulWidget {
  @override
  _DiceAppBodyState createState() => _DiceAppBodyState();
}

class _DiceAppBodyState extends State<DiceAppBody> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  createRandomDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
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
                    createRandomDiceNumber();
                  },
                  child: Image.asset("images/dice$leftDiceNumber.png"))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    createRandomDiceNumber();
                  },
                  child: Image.asset("images/dice$rightDiceNumber.png")))
        ],
      ),
    );
  }
}
