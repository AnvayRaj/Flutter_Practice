import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(
            child: Text('Ask Me Anything'),
          ),
        ),
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: BallPage(),
        ),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 3;
  void ballChange() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballChange();
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ),
      ],
    );
  }
}
