import 'package:flutter/material.dart';
import 'package:mobx_example/MobX/pages/home_page.dart';

/// mobx_codegen used for Adds support for
/// annotating your MobX code with @observable, @computed, @action, making it super simple to use MobX.

/// flutter_mobx
/// provide us a Observer Widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
