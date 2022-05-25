import 'package:flutter/material.dart';
import 'package:gradient_like_css/gradient_like_css.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

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
              gradient:
                  linearGradient(-225, ['#69EACB', '#EACCF8 48%', "#6654F1"]),
//              gradient: CssLike.linearGradient(null, ['#e66465', '#9198e5']),
//              gradient: CssLike.linearGradient(45, ['red', 'blue']),
//              gradient: CssLike.linearGradient(135, ['orange', 'orange 60%', 'cyan']),
//              gradient: CssLike.linearGradient(Alignment.centerRight, [
//                'red 20%',
//                'orange 20% 40%',
//                'yellow 40% 60%',
//                'green 60% 80%',
//                'blue 80%'
//              ]),
            ),
          ),
        ),
      ),
    );
  }
}
