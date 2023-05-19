import 'package:flutter/material.dart';
import 'package:mobx_example/MobX/pages/todo_page.dart';

class TodoAlertDialog extends StatelessWidget {
  final String todoTitle;

  const TodoAlertDialog({Key? key, required this.todoTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Are you sure?',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Text(
        'Do you really want to delete $todoTitle? This process cannot be undone.',
        textAlign: TextAlign.center,
      ),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      actions: [
        FilledButton(
          onPressed: () {
            todo.removeAll();
            Navigator.pop(context);
          },
          style: FilledButton.styleFrom(),
          child: const Text('Delete'),
        ),
        const SizedBox(
          height: 10,
        ),
        FilledButton.tonal(
          onPressed: () {
            Navigator.pop(context);
          },
          style: FilledButton.styleFrom(
            backgroundColor: Colors.white,
          ),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
