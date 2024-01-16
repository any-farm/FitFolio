import 'package:flutter/material.dart';

import '../../base/base_appbar.dart';

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(appBarTitle: 'My Page Screen'),
      body: Center(
        child: Text('My Page Screen 입니다.'),
      ),
    );
  }
}
