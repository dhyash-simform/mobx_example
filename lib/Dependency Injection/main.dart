import 'package:flutter/material.dart';
import 'package:mobx_example/Dependency%20Injection/dependency_injection_example.dart';
import 'package:mobx_example/Dependency%20Injection/model/user.dart';
import 'package:mobx_example/Dependency%20Injection/user_inherited_widget.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserInheritedWidget(
      user: User('Yash', 'Yash@gmail.com'),
      child: MaterialApp(
        title: 'Dependency Injection',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.red,
          ),
          useMaterial3: true,
        ),
        home: const HomePage(
            // user: User('Yash', 'Yash@gmail.com'),
            ),
      ),
    );
  }
}
