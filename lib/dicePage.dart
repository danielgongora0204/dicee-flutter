import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  final String name = 'hello';

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = Random().nextInt(6) + 1;

  int rightDiceNum = Random().nextInt(6) + 1;

  void _rollDice() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                _rollDice();
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                _rollDice();
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}

/*
class DicePage extends StatelessWidget {
  int leftDiceNum = (new Random()).nextInt(6) + 1;
  int rightDiceNum = (new Random()).nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                leftDiceNum = (new Random()).nextInt(6) + 1;
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rightDiceNum = (new Random()).nextInt(6) + 1;
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}*/
