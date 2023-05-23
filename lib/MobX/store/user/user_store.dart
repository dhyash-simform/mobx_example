import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class User = UserBase with _$User;

abstract class UserBase with Store {
  /// core-state
  @readonly
  String _fName = 'Yash';

  /// core-state
  @readonly
  String _lName = 'Dhrangdhariya';

  /// derived-state is depend on core-state
  @computed
  String get name => '$_fName $_lName';

  @action
  setLastName(String value) {
    _lName = value;
  }

  @action
  setFirstName(String value) {
    _fName = value;
  }
}
