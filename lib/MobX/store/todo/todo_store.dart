import 'package:mobx/mobx.dart';
import 'package:mobx_example/MobX/models/todo_model.dart';

part 'todo_store.g.dart';

class TodoStore = TodoStoreBase with _$TodoStore;

abstract class TodoStoreBase with Store {
  /// others
  /// ObservableSet<T>
  /// ObservableMap<K,V>

  @observable
  ObservableList<Observable<TodoModel>> todoStoreList = [
    Observable(
      TodoModel(
        title: 'Ex. Title here',
        desc: 'Ex. Desc here',
        isCompleted: false,
      ),
    ),
  ].asObservable();

  @computed
  int get todoListLength => todoStoreList.length;

  @computed
  List<Observable<TodoModel>> get completedTodoList => todoStoreList
      .where((element) => element.value.isCompleted == true)
      .toList();

  @computed
  List<Observable<TodoModel>> get pendingTodoList => todoStoreList
      .where((element) => element.value.isCompleted == false)
      .toList();

  void removeAll() {
    todoStoreList.clear();
  }

  void updateTodoTitle(int index, String newTodo) {
    todoStoreList[index].value.title = newTodo;
    todoStoreList[index].reportChanged();
  }

  void updateTodoCompleted(int index, bool value) {
    todoStoreList[index].value.isCompleted = value;
    todoStoreList[index].reportChanged();
  }

  void addTodo(TodoModel todo) {
    todoStoreList.add(
      Observable(todo),
    );
  }

  void removeTodo(int index) {
    todoStoreList.removeAt(index);
  }
}
