import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/MobX/store/connectivity_check/connectivity_check_store.dart';

class ConnectivityPage extends StatefulWidget {
  const ConnectivityPage({Key? key}) : super(key: key);

  @override
  State<ConnectivityPage> createState() => _ConnectivityPageState();
}

class _ConnectivityPageState extends State<ConnectivityPage> {
  final ConnectivityCheckStore connectivityCheckStore = ConnectivityCheckStore();

  @override
  void initState() {
    autorun((p0) {
      log(connectivityCheckStore.connectivityStream.value.toString());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactionBuilder(
      builder: (_) {
        return reaction(
          (p0) => connectivityCheckStore.connectivityStream.value,
          (result) {
            log(
              'called ${connectivityCheckStore.connectivityStream.value}',
              name: 'connectivity_page.dart',
            );
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
            builder: (_) => Text(
                'Your connection status: ${connectivityCheckStore.connectivityStream.value}'),
          ),
        ),
      ),
    );
  }
}
