import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/MobX/store/random_number/random_number_store.dart';

class RandomNumberPage extends StatelessWidget {
  final random = RandomNumber();

  RandomNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Random Number"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Random number',
                style: TextStyle(color: Colors.grey),
              ),
              Observer(
                builder: (context) {
                  final value = random.randomStream.value;
                  return Text(
                    value == null ? '---' : value.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 64,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
