import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tomato Disease Prediction",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        elevation: 10.0,
      ),
      body: Center(
        child: Text('Coming Soon')
      ),
    );
  }
}
