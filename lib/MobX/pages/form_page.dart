import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/MobX/store/form/form_store.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final SignUpForm signUpForm = SignUpForm();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Form Example"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Observer(
                builder: (context) => TextField(
                  onChanged: (value) {
                    signUpForm.setUsername(value);
                    signUpForm.validUsername(value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Username',
                    errorText: signUpForm.usernameError,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Observer(
                builder: (context) => TextField(
                  onChanged: (value) {
                    signUpForm.setEmail(value);
                    signUpForm.validEmail(value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Email',
                    errorText: signUpForm.emailError,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Observer(
                builder: (context) => TextField(
                  onChanged: (value) {
                    signUpForm.setPassword(value);
                    signUpForm.validPassword(value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Password',
                    errorText: signUpForm.passwordError,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Observer(
                builder: (context) => ElevatedButton(
                  onPressed: signUpForm.hasErrors
                      ? null
                      : () {
                          signUpForm.validateAll();
                        },
                  child: const Text('Sign up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
