import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_example/MobX/models/todo_model.dart';
import 'package:mobx_example/MobX/store/todo/todo_store.dart';
import 'package:mobx_example/MobX/widgets/todo_alert_dialog.dart';
import 'package:mobx_example/MobX/widgets/todo_bottom_sheet.dart';

class TodoPage extends StatelessWidget {
  final TodoStore todo = TodoStore();

  TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Observer(
              builder: (_) => IconButton(
                onPressed: todo.todoListLength == 0
                    ? null
                    : () {
                        showDialog(
                          context: context,
                          builder: (context) => TodoAlertDialog(
                            todoTitle: 'all todos',
                            todoStore: todo,
                          ),
                        );
                      },
                icon: const Icon(Icons.delete_sweep_rounded),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => todo.addTodo(
          TodoModel(
            title: todo.todoListLength == 0
                ? 'Todo 1'
                : 'Todo ${todo.todoListLength + 1}',
            desc:
                'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet...',
          ),
        ),
        child: const Icon(
          Icons.add_rounded,
        ),
      ),
      body: Observer(
        builder: (_) => todo.todoListLength == 0
            ? Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Empty List!\n\n',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'You have no todo at this moment :(',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      )
                    ],
                  ),
                ),
              )
            : ListView.separated(
                // itemCount: todo.todoListLength,
                itemCount: todo.todoStoreList.length,
                padding: const EdgeInsets.all(20),
                itemBuilder: (_, index) {
                  return Observer(
                    builder: (_) => ListTile(
                      leading: const Icon(Icons.list),
                      title: Text(
                        todo.todoStoreList[index].value.title,
                      ),
                      subtitle: Text(
                        todo.todoStoreList[index].value.desc,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                      onTap: () => showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                        ),
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => TodoBottomSheet(
                          index: index,
                          todoStore: todo,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () => todo.removeTodo(index),
                        icon: const Icon(
                          Icons.delete_outline_rounded,
                        ),
                      ),
                      tileColor: Colors.black.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                },
                separatorBuilder: (_, index) => const SizedBox(
                  height: 15,
                ),
              ),
      ),
    );
  }
}
