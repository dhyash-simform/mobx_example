import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/MobX/constants/navigation_extension.dart';
import 'package:mobx_example/MobX/pages/connectivity_page.dart';
import 'package:mobx_example/MobX/pages/fetch_user_page.dart';
import 'package:mobx_example/MobX/pages/form_page.dart';
import 'package:mobx_example/MobX/pages/hacker_news_page.dart';
import 'package:mobx_example/MobX/store/counter/counter_store.dart';
import 'package:mobx_example/MobX/store/user/user_store.dart';
import 'package:mobx_example/MobX/pages/user_page.dart';
import 'package:mobx_example/MobX/pages/dice_page.dart';
import 'package:mobx_example/MobX/pages/random_number_page.dart';
import 'package:mobx_example/MobX/pages/todo_page.dart';

/// flutter_mobx
/// Provides the Observer widget that listens to observables and automatically rebuilds on changes.

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UserStore user = UserStore();
  final CounterStore counter = CounterStore();

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
    log(counter.value.toString(), name: 'counterPrint');
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

  Map<String, Widget> listOfExamples = {
    'Todo Example': TodoPage(),
    'Dice Example': DicePage(),
    'Random Number Example': RandomNumberPage(),
    'Form Example': FormPage(),
    'Connectivity Example': const ConnectivityPage(),
    'Fetch User Example': FetchUserPage(),
    'Hacker News Example': const HackerNewsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Observer(
                    builder: (_) => RichText(
                      text: TextSpan(
                        text: 'Hi, 👋\n',
                        children: [
                          TextSpan(
                            text: user.name,
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
                          child: UserPage(
                            userStore: user,
                          ),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.settings,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'You have pushed the button this many times:',
                textAlign: TextAlign.center,
              ),
              Observer(
                builder: (_) => Text(
                  '${counter.value}',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                itemCount: listOfExamples.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => FilledButton.tonal(
                  onPressed: () => context.navigateAndPush(
                    listOfExamples.values.elementAt(index),
                  ),
                  child: Text(
                    listOfExamples.keys.elementAt(index),
                  ),
                ),
                separatorBuilder: (_, index) => const SizedBox(
                  height: 10,
                ),
              ),
            ],
          ),
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
