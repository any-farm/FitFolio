import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String appBarTitle;

  const BaseAppBar(
      {
        super.key,
        required this.appBarTitle
      }
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarTitle,
        style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
