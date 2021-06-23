import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: "Random number generator",
      home: Scaffold(
        appBar: AppBar(title: Text("Hello world")),
      ),
    );
  }
}
