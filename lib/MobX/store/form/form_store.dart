import 'package:mobx/mobx.dart';

part 'form_store.g.dart';

class SignUpForm = SignUpFormBase with _$SignUpForm;

abstract class SignUpFormBase with Store {
  @observable
  String? username;

  @observable
  String? email;

  @observable
  String? password;

  @observable
  String? usernameError;

  @observable
  String? emailError;

  @observable
  String? passwordError;

  @action
  void setUsername(value) {
    username = value;
  }

  @action
  void setEmail(value) {
    email = value;
  }

  @action
  void setPassword(value) {
    password = value;
  }

  @computed
  bool get hasErrors =>
      usernameError != null || emailError != null || passwordError != null;

  @action
  void validUsername(String? value) {
    if (value == null || value.isEmpty) {
      usernameError = 'Cannot be blank';
      return;
    }
    usernameError = null;
  }

  @action
  void validEmail(String? value) {
    if (value == null || value.isEmpty) {
      emailError = 'Cannot be blank';
      return;
    }
    emailError = null;
  }

  @action
  void validPassword(String? value) {
    if (value == null || value.isEmpty) {
      passwordError = 'Cannot be blank';
      return;
    }
    passwordError = null;
  }

  @action
  void validateAll() {
    validUsername(username);
    validEmail(email);
    validPassword(password);
  }
}
