import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/MobX/store/random_number/random_number_store.dart';

class RandomNumberPage extends StatelessWidget {
  final RandomNumberStore random = RandomNumberStore();

  RandomNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Number"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Random number',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          Observer(
            builder: (_) {
              final value = random.randomStream.value;
              return Text(
                value == null ? '---' : value.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 64,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
