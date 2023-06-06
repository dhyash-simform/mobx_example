// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';

// Include generated file
part 'counter_store.g.dart';

// This is the class used by rest of your codebase
class CounterStore = _CounterStore with _$CounterStore;

// The store-classA
abstract class _CounterStore with Store {
  @observable
  int value = 0;

  void increment() {
    value++;
  }
}
