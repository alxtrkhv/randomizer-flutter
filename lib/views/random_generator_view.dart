import 'dart:math';

import 'package:flutter/material.dart';

class RandomGeneratorView extends StatefulWidget {
  final double width;
  final double height;

  RandomGeneratorView({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _RandomGeneratorViewState();
}

class _RandomGeneratorViewState extends State<RandomGeneratorView> {
  int _currentValue = 0;
  int _maxValue = 256;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.width,
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('$_currentValue'),
            TextButton(
              onPressed: _onButtonClicked,
              child: Text('Click me'),
            )
          ],
        ));
  }

  void _onButtonClicked() {
    setState(() {
      _currentValue = Random().nextInt(_maxValue + 1);
    });
  }
}
