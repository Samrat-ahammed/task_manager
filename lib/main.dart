import 'package:flutter/material.dart';
import 'package:task_manezer_app/Screen/LoginScreen.dart';
import 'package:task_manezer_app/Screen/SplashScreen.dart';
import 'package:task_manezer_app/Screen/btmNvmBarr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'to do apss',
      home:
          //  BtmNvmBarr()
          // LoginScreen()
          SplashScreen(),
    );
  }
}
