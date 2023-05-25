import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/MobX/store/dice/dice_store.dart';

class DicePage extends StatelessWidget {
  final DiceStore diceStore = DiceStore();

  DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Observer(
                builder: (_) => Image.asset(
                  'assets/images/dice-${diceStore.diceOne}.png',
                  width: 90,
                  height: 90,
                ),
              ),
              Observer(
                builder: (_) => Image.asset(
                  'assets/images/dice-${diceStore.diceTwo}.png',
                  width: 90,
                  height: 90,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Observer(
            builder: (_) => Text('Total sum: ${diceStore.totalSum}'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: diceStore.drawnDice,
        child: const Icon(
          Icons.swap_horiz_outlined,
        ),
      ),
    );
  }
}
