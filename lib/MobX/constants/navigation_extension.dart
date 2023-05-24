import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  void navigateAndPush(Widget widget) {
    Navigator.push(
      this,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }
}
