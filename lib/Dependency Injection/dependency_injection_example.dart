import 'package:flutter/material.dart';
import 'package:mobx_example/Dependency%20Injection/user_inherited_widget.dart';

class HomePage extends StatefulWidget {
  /// this widget is dependent on User class
  // final User user;

  /// injected this class thought constructor
  const HomePage({
    Key? key,
    // required this.user,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentUser = UserInheritedWidget.of(context).user;
    return Scaffold(
      appBar: AppBar(
        title: Text('Name: ${currentUser.name}'),
      ),
      body: const Child1(),
      // body: Center(
      //   child: Text(
      //     'Name: ${widget.user.name}',
      //   ),
      // ),
    );
  }
}

class Child1 extends StatelessWidget {
  const Child1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Child2();
  }
}

class Child2 extends StatelessWidget {
  const Child2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Child3();
  }
}

class Child3 extends StatelessWidget {
  const Child3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Child4();
  }
}

class Child4 extends StatelessWidget {
  /// to access in this child we have to pass thought all of the childs
  /// Child1, Child2, Child3
  const Child4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentUser = UserInheritedWidget.of(context).user;
    return Center(
      child: Text(
        'Email: ${currentUser.email}',
      ),
    );
  }
}
