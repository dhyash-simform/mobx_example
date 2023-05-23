import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/MobX/store/dice/dice_store.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Dice dice = Dice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Dice Example"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Observer(
                  builder: (BuildContext context) => Image.asset(
                    'assets/images/dice-${dice.diceOne}.png',
                    width: 90,
                    height: 90,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Observer(
                  builder: (BuildContext context) => Image.asset(
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
              builder: (BuildContext context) =>
                  Text('Total sum: ${dice.totalSum}'),
            ),
          ],
        ),
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
