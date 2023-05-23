import 'package:mobx/mobx.dart';
import 'package:mobx_example/MobX/model/todo_modal.dart';

part 'todo_store.g.dart';

class TodoMobx = TodoBase with _$TodoMobx;

abstract class TodoBase with Store {
  // @observable
  // ObservableList<TodoModel> todoList = ObservableList<TodoModel>();

  /// others
  /// ObservableSet<T>
  /// ObservableMap<K,V>

  ObservableList<TodoModel> todoList = [
    const TodoModel(title: 'Ex. Title here', desc: 'Ex. Desc here'),
  ].asObservable();

  @computed
  int get todoListLength => todoList.length;

  void removeAll() {
    todoList.clear();
  }

  addTodo(TodoModel todo) {
    todoList.add(todo);
  }

  removeTodo(int index) {
    todoList.removeAt(index);
  }
}
