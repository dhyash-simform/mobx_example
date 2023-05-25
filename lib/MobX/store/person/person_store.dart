import 'package:mobx/mobx.dart';
import 'package:mobx_example/MobX/models/person_model.dart';

part 'person_store.g.dart';

class PersonStore = PersonStoreBase with _$PersonStore;

abstract class PersonStoreBase with Store {
  /// core-state
  @readonly
  String _fName = 'Yash';

  /// core-state
  @readonly
  String _lName = 'D';

  /// derived-state is depend on core-state
  @computed
  String get name => '$_fName $_lName';

  @observable
  PersonModel user = PersonModel('fName', 'lName');

  final user2 = Observable(PersonModel('yash', 'dh'));

  @action
  void changeUser2() {
    user2.value = PersonModel('fName', user2.value.lName);
  }

  void changeUser(String value) {
    user = PersonModel(value, user.lName);
  }

  @action
  void setLastName(String value) {
    _lName = value;
  }

  @action
  void setFirstName(String value) {
    _fName = value;
  }
}