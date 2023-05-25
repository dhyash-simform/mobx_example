// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignUpFormStore on SignUpFormStoreBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: 'SignUpFormStoreBase.hasErrors'))
          .value;

  late final _$usernameAtom =
      Atom(name: 'SignUpFormStoreBase.username', context: context);

  @override
  String? get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String? value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  late final _$emailAtom =
      Atom(name: 'SignUpFormStoreBase.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: 'SignUpFormStoreBase.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$usernameErrorAtom =
      Atom(name: 'SignUpFormStoreBase.usernameError', context: context);

  @override
  String? get usernameError {
    _$usernameErrorAtom.reportRead();
    return super.usernameError;
  }

  @override
  set usernameError(String? value) {
    _$usernameErrorAtom.reportWrite(value, super.usernameError, () {
      super.usernameError = value;
    });
  }

  late final _$emailErrorAtom =
      Atom(name: 'SignUpFormStoreBase.emailError', context: context);

  @override
  String? get emailError {
    _$emailErrorAtom.reportRead();
    return super.emailError;
  }

  @override
  set emailError(String? value) {
    _$emailErrorAtom.reportWrite(value, super.emailError, () {
      super.emailError = value;
    });
  }

  late final _$passwordErrorAtom =
      Atom(name: 'SignUpFormStoreBase.passwordError', context: context);

  @override
  String? get passwordError {
    _$passwordErrorAtom.reportRead();
    return super.passwordError;
  }

  @override
  set passwordError(String? value) {
    _$passwordErrorAtom.reportWrite(value, super.passwordError, () {
      super.passwordError = value;
    });
  }

  late final _$SignUpFormStoreBaseActionController =
      ActionController(name: 'SignUpFormStoreBase', context: context);

  @override
  void setUsername(dynamic value) {
    final _$actionInfo = _$SignUpFormStoreBaseActionController.startAction(
        name: 'SignUpFormStoreBase.setUsername');
    try {
      return super.setUsername(value);
    } finally {
      _$SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(dynamic value) {
    final _$actionInfo = _$SignUpFormStoreBaseActionController.startAction(
        name: 'SignUpFormStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(dynamic value) {
    final _$actionInfo = _$SignUpFormStoreBaseActionController.startAction(
        name: 'SignUpFormStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validUsername(String? value) {
    final _$actionInfo = _$SignUpFormStoreBaseActionController.startAction(
        name: 'SignUpFormStoreBase.validUsername');
    try {
      return super.validUsername(value);
    } finally {
      _$SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validEmail(String? value) {
    final _$actionInfo = _$SignUpFormStoreBaseActionController.startAction(
        name: 'SignUpFormStoreBase.validEmail');
    try {
      return super.validEmail(value);
    } finally {
      _$SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validPassword(String? value) {
    final _$actionInfo = _$SignUpFormStoreBaseActionController.startAction(
        name: 'SignUpFormStoreBase.validPassword');
    try {
      return super.validPassword(value);
    } finally {
      _$SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateAll() {
    final _$actionInfo = _$SignUpFormStoreBaseActionController.startAction(
        name: 'SignUpFormStoreBase.validateAll');
    try {
      return super.validateAll();
    } finally {
      _$SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
email: ${email},
password: ${password},
usernameError: ${usernameError},
emailError: ${emailError},
passwordError: ${passwordError},
hasErrors: ${hasErrors}
    ''';
  }
}
