import 'package:flutter/material.dart';

class InputFieldWithLabel extends StatelessWidget {
  final String label;
  final Function(String) onSubmitted;
  final TextEditingController controller;

  final double width;
  final double height;

  InputFieldWithLabel({
    Key? key,
    required this.controller,
    required this.label,
    required this.onSubmitted,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        children: [
          Text(
            '$label',
            style: theme.textTheme.headline6,
          ),
          TextField(
            textAlign: TextAlign.center,
            onSubmitted: onSubmitted,
            controller: controller,
          )
        ],
      ),
    );
  }
}
