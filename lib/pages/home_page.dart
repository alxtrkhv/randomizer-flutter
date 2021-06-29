import 'package:flutter/material.dart';
import 'package:random_number_generator/views/random_generator_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(title: Text('Random Generator')),
      body: Center(
        child: RandomGeneratorView(
          width: 75,
          height: 50,
        ),
      ),
    );
  }
}
