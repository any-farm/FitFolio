import 'package:fitfolio/base/base_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(appBarTitle: 'Main Screen'),
      body: Center(
        child: Text('Main Screen 입니다.'),
      ),
    );
  }
}
