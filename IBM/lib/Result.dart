import 'dart:math';
import 'package:flutter/material.dart';
import 'package:newcourse/Colors.dart';

// ignore: must_be_immutable
class Result extends StatefulWidget {
  double hight;
  double weight;
  bool ismale;
  Result({super.key, required this.hight, required this.weight , required this.ismale});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    
    double BMIResult = widget.weight / pow(widget.hight / 100, 2);
    String res = '';
    switch (BMIResult) {
      case < 16:
        res = "Severe Thinnes";
        break;
      case > 18.5 && < 25:
        res = "Normal";
        break;
      case > 25 && < 30:
        res = "overweirgt";
        break;
    }
    return Scaffold(
      backgroundColor: widget.ismale ? KblueColor: KredColor,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "BMI RESULT IS :",
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              BMIResult.toStringAsFixed(1),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 46,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(res,
                style: const TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.refresh,
                color: Colors.white,
                size: 36,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
