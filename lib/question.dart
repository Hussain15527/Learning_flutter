import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String text = "";
  Question({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
          shadowColor: Colors.red,
          color: Colors.grey,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 28,
            ),
          )),
    );
  }
}
