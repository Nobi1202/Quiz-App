import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  const Questions(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: const TextStyle(color: Colors.black, fontSize: 20),
    );
  }
}
