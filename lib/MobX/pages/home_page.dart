import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/MobX/pages/connectivity_page.dart';
import 'package:mobx_example/MobX/pages/fetch_user_page.dart';
import 'package:mobx_example/MobX/pages/form_page.dart';
import 'package:mobx_example/MobX/store/counter/counter_store.dart';
import 'package:mobx_example/MobX/store/user/user_store.dart';
import 'package:mobx_example/MobX/pages/user_page.dart';
import 'package:mobx_example/MobX/pages/dice_page.dart';
import 'package:mobx_example/MobX/pages/random_number_page.dart';
import 'package:mobx_example/MobX/pages/todo_page.dart';

import 'dart:developer' as debug;

/// flutter_mobx
/// Provides the Observer widget that listens to observables and automatically rebuilds on changes.

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final currentUser = User();

class _HomePageState extends State<HomePage> {
  final counter = Counter();

  @override
  void initState() {
    super.initState();

    /// to print anything on console
    autorun(counterPrint);

    /// for performing any actions
    reaction<int>(
      (reaction1) => counter.value,
      // showCounterSnackBar,
      (reaction1) {
        /// show output when match any condition
        when(
          (reaction2) => reaction1 % 2 == 0,
          showCounterDialog,
        );
      },
    );
  }

  counterPrint(reaction) {
    debug.log(counter.value.toString(), name: 'counterPrint');
  }

  showCounterSnackBar(int value) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            'Counter pressed $value times',
          ),
        ),
      );
  }

  showCounterDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Counter'),
        content: const Text(
          'Counter value is divide by 2.',
        ),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actions: [
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: FilledButton.styleFrom(
              minimumSize: const Size(
                double.infinity,
                44,
              ),
            ),
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Observer(
                    builder: (BuildContext context) => RichText(
                      text: TextSpan(
                        text: 'Hi, 👋\n',
                        children: [
                          TextSpan(
                            text: currentUser.name,
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                        ),
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: const UserPage(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.settings,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Observer(
                      builder: (BuildContext context) => Text(
                        '${counter.value}',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FilledButton.tonal(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => TodoPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Todo Page',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FilledButton.tonal(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => RandomNumberPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Random Number Page',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FilledButton.tonal(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => FetchUserPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Fetch User Example',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FilledButton.tonal(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const DicePage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Dice Example',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FilledButton.tonal(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const FormPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Form Example',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FilledButton.tonal(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const ConnectivityPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Connectivity Example',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
