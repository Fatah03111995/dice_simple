import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePage();
}

class _DicePage extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[800],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          'Dice Simple App',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(child: Image.asset('assets/images/dice1.png')),
            Expanded(child: Image.asset('assets/images/dice1.png'))
          ],
        ),
      ),
    );
  }
}
