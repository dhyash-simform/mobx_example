import 'package:mobx/mobx.dart';

// Include generated file
part 'counter_store.g.dart';

// This is the class used by rest of your codebase
class CounterStore = CounterStoreBase with _$CounterStore;

// The store-classA
abstract class CounterStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
