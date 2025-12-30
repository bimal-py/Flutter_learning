import 'package:flutter/material.dart';
import 'package:flutter_learning/login_screen.dart';
import 'package:flutter_learning/splash_screen.dart';

void main() {
  runApp(FlutterLearningApp());
}

class FlutterLearningApp extends StatelessWidget {
  const FlutterLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Learning App",
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.pink,
          //
        ),
      ),
      initialRoute: '/splash',
      routes: {
        "/splash": (context) => SplashScreen(),
        "/login": (context) => LoginScreen(),
      },

      //
    );
  }
}
