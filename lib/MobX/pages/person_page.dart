import 'package:flutter/material.dart';
import 'package:mobx_example/MobX/store/person/person_store.dart';

class PersonPage extends StatelessWidget {
  final PersonStore personStore;

  const PersonPage({Key? key, required this.personStore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController fistNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    fistNameController.text = personStore.fName;
    lastNameController.text = personStore.lName;
    InputBorder textFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Change Your Name',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: fistNameController,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              helperText: 'Ex. First Name',
              hintText: 'Enter Your First Name',
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              fillColor: Colors.black.withOpacity(0.06),
              contentPadding: const EdgeInsets.all(18),
              filled: true,
              errorBorder: textFieldBorder,
              focusedBorder: textFieldBorder,
              focusedErrorBorder: textFieldBorder,
              disabledBorder: textFieldBorder,
              enabledBorder: textFieldBorder,
              border: textFieldBorder,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: lastNameController,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              helperText: 'Ex. Last Name',
              hintText: 'Enter Your Last Name',
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              fillColor: Colors.black.withOpacity(0.06),
              contentPadding: const EdgeInsets.all(18),
              filled: true,
              errorBorder: textFieldBorder,
              focusedBorder: textFieldBorder,
              focusedErrorBorder: textFieldBorder,
              disabledBorder: textFieldBorder,
              enabledBorder: textFieldBorder,
              border: textFieldBorder,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FilledButton.tonal(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          const SizedBox(
            height: 10,
          ),
          FilledButton(
            onPressed: () {
              personStore
                ..setFirstName(
                  fistNameController.text.trim(),
                )
                ..setLastName(
                  lastNameController.text.trim(),
                );
              Navigator.pop(context);
            },
            child: const Text('Confirm'),
          ),
        ],
      ),
    );
  }
}
