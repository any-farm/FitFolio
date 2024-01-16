import 'package:fitfolio/ui/main/main_screen.dart';
import 'package:fitfolio/ui/intro/splash_screen.dart';
import 'package:fitfolio/ui/mypage/MyPageScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitFolio',
      initialRoute: '/splash',
      routes: {
        '/splash' : (context) => SplashScreen(),
        '/main' : (context) => MainScreen(),
        '/my_page' : (context) => MyPageScreen(),
      },
    );
  }
}