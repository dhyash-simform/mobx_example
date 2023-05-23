import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/main.dart';

class ConnectivityPage extends StatefulWidget {
  const ConnectivityPage({Key? key}) : super(key: key);

  @override
  State<ConnectivityPage> createState() => _ConnectivityPageState();
}

class _ConnectivityPageState extends State<ConnectivityPage> {
  @override
  Widget build(BuildContext context) {
    return ReactionBuilder(
      builder: (context) {
        return reaction(
          (p0) => connectivityCheck.connectivityStream.value,
          (result) {
            print('called ${connectivityCheck.connectivityStream.value}');
            final messenger = ScaffoldMessenger.of(context);
            messenger.showSnackBar(
              SnackBar(
                content: Text(
                  result == ConnectivityResult.none
                      ? 'You\'re offline'
                      : 'You\'re online',
                ),
              ),
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Connectivity Example"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Observer(
            builder: (context) => Text(
                'Your connection status: ${connectivityCheck.connectivityStream.value}'),
          ),
        ),
      ),
    );
  }
}
