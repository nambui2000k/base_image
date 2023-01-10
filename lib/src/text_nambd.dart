import 'package:flutter/material.dart';

class TextNamBDWidget extends StatelessWidget {
  final String content;
  const TextNamBDWidget({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
          color: Colors.green, fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}
