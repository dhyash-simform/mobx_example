import 'package:mobx/mobx.dart';

part 'user_store.g.dart';

class UserStore = UserBase with _$UserStore;

abstract class UserBase with Store {
  /// core-state
  @readonly
  String _fName = 'Yash';

  /// core-state
  @readonly
  String _lName = 'D';

  /// derived-state is depend on core-state
  @computed
  String get name => '$_fName $_lName';

  @action
  void setLastName(String value) {
    _lName = value;
  }

  @action
  void setFirstName(String value) {
    _fName = value;
  }
}
