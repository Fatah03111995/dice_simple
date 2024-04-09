import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePage();
}

class _DicePage extends State<DicePage> {
  int rightDice = 1;
  int leftDice = 1;

  void changeDice() {
    setState(() {
      rightDice = Random().nextInt(6) + 1;
      leftDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[800],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        centerTitle: true,
        title: const Text(
          'Dice Simple App',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: changeDice,
                child: Image.asset('assets/images/dice$leftDice.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: changeDice,
                child: Image.asset('assets/images/dice$rightDice.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
