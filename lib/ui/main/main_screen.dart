import 'package:fitfolio/base/base_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Main Screen'),
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                /// TODO 로그인 상태 -> 마이페이지 화면 이동 / 비로그인 상태 -> 로그인 필요 팝업 호출
                Navigator.pushReplacementNamed(context, '/my_page');
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Tab1 Content')),
            Center(child: Text('Tab2 Content')),
            Center(child: Text('Tab3 Content')),
            Center(child: Text('Tab4 Content')),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'tab1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_outlined),
              label: 'tab2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_gymnastics_outlined),
              label: 'tab3',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'tab4',
            ),
          ],
        ),
      ),
    );
  }

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 0:
        Navigator.pushReplacementNamed(context, '/main');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/camera');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/record');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/settings');
        break;
    }
    setState(() {
      _currentTabIndex = tabIndex;
    });
  }
}
