import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/MobX/store/dice/dice_store.dart';

class DicePage extends StatelessWidget {
  final DiceStore dice = DiceStore();

  DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Observer(
                builder: (_) => Image.asset(
                  'assets/images/dice-${dice.diceOne}.png',
                  width: 90,
                  height: 90,
                ),
              ),
              Observer(
                builder: (_) => Image.asset(
                  'assets/images/dice-${dice.diceTwo}.png',
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
            builder: (_) => Text('Total sum: ${dice.totalSum}'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: dice.drawnDice,
        child: const Icon(
          Icons.swap_horiz_outlined,
        ),
      ),
    );
  }
}
