import 'dart:math';

import 'package:mobx/mobx.dart';

part 'dice_store.g.dart';

class DiceStore = DiceStoreBase with _$DiceStore;

abstract class DiceStoreBase with Store {
  @observable
  int diceOne = 1;

  @observable
  int diceTwo = 1;

  @computed
  get totalSum => diceOne + diceTwo;

  @action
  void drawnDice() {
    diceOne = Random().nextInt(6) + 1;
    diceTwo = Random().nextInt(6) + 1;
  }
}
