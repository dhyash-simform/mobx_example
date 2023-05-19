import 'package:mobx/mobx.dart';
import 'package:mobx_example/MobX/model/todo_modal.dart';

part 'todo_mobx.g.dart';

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

  ReactionDisposer? checkListLength;

  @computed
  int get todoListLength => todoList.length;

  @action
  removeAll() {
    todoList.clear();
  }

  @action
  addTodo(TodoModel todo) {
    todoList.add(todo);
  }

  @action
  removeTodo(int index) {
    todoList.removeAt(index);
  }
}
