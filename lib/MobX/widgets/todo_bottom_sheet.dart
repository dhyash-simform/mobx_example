import 'package:flutter/material.dart';
import 'package:mobx_example/MobX/store/todo/todo_store.dart';

class TodoBottomSheet extends StatelessWidget {
  final int index;
  final TodoStore todoStore;

  const TodoBottomSheet({
    Key? key,
    required this.index,
    required this.todoStore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController editTodoController = TextEditingController();
    editTodoController.text = todoStore.todoStoreList[index].value.title;
    InputBorder textFieldBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
    );
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Padding(
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
              controller: editTodoController,
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
            FilledButton.tonal(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            const SizedBox(
              height: 10,
            ),
            FilledButton(
              onPressed: () {
                todoStore.updateTodoTitle(
                  index,
                  editTodoController.text.trim(),
                );
                Navigator.pop(context);
              },
              child: const Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }
}
