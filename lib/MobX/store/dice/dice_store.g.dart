// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DiceStore on DiceStoreBase, Store {
  Computed<dynamic>? _$totalSumComputed;

  @override
  dynamic get totalSum =>
      (_$totalSumComputed ??= Computed<dynamic>(() => super.totalSum,
              name: 'DiceStoreBase.totalSum'))
          .value;

  late final _$diceOneAtom =
      Atom(name: 'DiceStoreBase.diceOne', context: context);

  @override
  int get diceOne {
    _$diceOneAtom.reportRead();
    return super.diceOne;
  }

  @override
  set diceOne(int value) {
    _$diceOneAtom.reportWrite(value, super.diceOne, () {
      super.diceOne = value;
    });
  }

  late final _$diceTwoAtom =
      Atom(name: 'DiceStoreBase.diceTwo', context: context);

  @override
  int get diceTwo {
    _$diceTwoAtom.reportRead();
    return super.diceTwo;
  }

  @override
  set diceTwo(int value) {
    _$diceTwoAtom.reportWrite(value, super.diceTwo, () {
      super.diceTwo = value;
    });
  }

  late final _$DiceStoreBaseActionController =
      ActionController(name: 'DiceStoreBase', context: context);

  @override
  void drawnDice() {
    final _$actionInfo = _$DiceStoreBaseActionController.startAction(
        name: 'DiceStoreBase.drawnDice');
    try {
      return super.drawnDice();
    } finally {
      _$DiceStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
diceOne: ${diceOne},
diceTwo: ${diceTwo},
totalSum: ${totalSum}
    ''';
  }
}
