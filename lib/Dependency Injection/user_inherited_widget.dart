import 'package:flutter/material.dart';
import 'package:mobx_example/Dependency%20Injection/model/user.dart';

class UserInheritedWidget extends InheritedWidget {
  final User user;

  const UserInheritedWidget({
    Key? key,
    required Widget child,
    required this.user,
  }) : super(key: key, child: child);

  static UserInheritedWidget of(BuildContext context) {
    final UserInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<UserInheritedWidget>();
    assert(result != null, 'No UserInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(UserInheritedWidget oldWidget) {
    return true;
  }
}
