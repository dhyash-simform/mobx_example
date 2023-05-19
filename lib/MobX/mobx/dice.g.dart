// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Dice on DiceBase, Store {
  Computed<dynamic>? _$totalSumComputed;

  @override
  dynamic get totalSum => (_$totalSumComputed ??=
          Computed<dynamic>(() => super.totalSum, name: 'DiceBase.totalSum'))
      .value;

  late final _$diceOneAtom = Atom(name: 'DiceBase.diceOne', context: context);

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

  late final _$diceTwoAtom = Atom(name: 'DiceBase.diceTwo', context: context);

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

  late final _$DiceBaseActionController =
      ActionController(name: 'DiceBase', context: context);

  @override
  void drawnDice() {
    final _$actionInfo =
        _$DiceBaseActionController.startAction(name: 'DiceBase.drawnDice');
    try {
      return super.drawnDice();
    } finally {
      _$DiceBaseActionController.endAction(_$actionInfo);
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
