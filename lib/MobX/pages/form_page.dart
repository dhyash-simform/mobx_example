import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/MobX/store/form/form_store.dart';

class FormPage extends StatelessWidget {
  FormPage({Key? key}) : super(key: key);

  final SignUpFormStore signUpFormStore = SignUpFormStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => signUpFormStore
                  ..setUsername(value)
                  ..validUsername(value),
                decoration: InputDecoration(
                  hintText: 'Username',
                  errorText: signUpFormStore.usernameError,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => signUpFormStore
                  ..setEmail(value)
                  ..validEmail(value),
                decoration: InputDecoration(
                  hintText: 'Email',
                  errorText: signUpFormStore.emailError,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Observer(
              builder: (_) => TextField(
                onChanged: (value) => signUpFormStore
                  ..setPassword(value)
                  ..validPassword(value),
                decoration: InputDecoration(
                  hintText: 'Password',
                  errorText: signUpFormStore.passwordError,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Observer(
              builder: (_) => ElevatedButton(
                onPressed: signUpFormStore.hasErrors
                    ? null
                    : () => signUpFormStore.validateAll,
                child: const Text('Sign up'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
