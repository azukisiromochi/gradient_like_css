import 'package:flutter/material.dart';
import 'package:gradient_like_css/gradient_like_css.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
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
              gradient: linearGradient(null, ['#e66465', '#9198e5']),

              /// Gradient at a 45-degree angle
// gradient: linearGradient(45, ['red', 'blue']),
              /// Gradient that starts at 60% of the gradient line
// gradient: linearGradient(135, ['orange', 'orange 60%', 'cyan']),
              /// Gradient with multi-position color stops
// gradient: linearGradient(
// Alignment.centerRight,
// [
// 'red 20%',
// 'orange 20% 40%',
// 'yellow 40% 60%',
// 'green 60% 80%',
// 'blue 80%',
// ],
// ),
            ),
          ),
        ),
      ),
    );
  }
}
