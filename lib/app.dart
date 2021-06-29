import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class App extends StatelessWidget {
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: 'Random number generator',
      home: HomePage(),
    );
  }
}
