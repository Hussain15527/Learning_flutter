import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var question = ["what is your name", "what is your age"];

  void correct() {
    print("correct answer");
  }

  void incorrect() {
    print("incorrrect");
  }

  var index = 0;

  void change() {
    setState(() {
      index = (index + 1) % 2;
    });
  }

  String ans = "please choose an answe";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: Column(
          children: [
            Question(text: question[index]),
            Row(children: [
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      ans = "correct answer";
                    });
                  },
                  child: Text("lion")),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      ans = "incorrect answer";
                    });
                  },
                  child: Text("cow")),
              RaisedButton(
                  onPressed: () {
                    incorrect();
                  },
                  child: Text("Tree")),
              RaisedButton(
                onPressed: incorrect,
                child: Text("Cheetah"),
              ),
            ]),
            ElevatedButton(
                onPressed: () {
                  change();
                },
                child: Text("chan")),
            Text(ans)
          ],
        ),
      ),
    );
  }
}
