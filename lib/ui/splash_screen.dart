import 'package:flutter/material.dart';

import '../base/base_appbar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO 3초 후 메인으로 이동 (권한 검사나 인트로에서 필요한 API 통신 후 이동하도록 변경예정)
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/main');
      },
    );

    return Scaffold(
      appBar: BaseAppBar(appBarTitle: 'Splash Screen'),
      body: Center(
        child: Text('Splash Screen 입니다.'),
      ),
    );
  }
}
