import 'package:flutter/material.dart';
import 'package:gradient_like_css/gradient_like_css.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('gradient_like_css'),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              gradient: CssLike.linearGradient(
                  70, ['#FFE5C5 17.61%', '#D2B38B 50.22%', '#F1DDC3 83.52%']),
            ),
          ),
        ),
      ),
    );
  }
}
