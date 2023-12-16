import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../base/base_appbar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(appBarTitle: 'Splash Screen'),
      body: Center(
        child: Text('Splash Screen 입니다.'),
      ),
    );
  }
}
