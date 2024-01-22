import 'package:collection/collection.dart';
import 'package:task_man/core/error/exceptions.dart';
import 'package:task_man/feature/todo/data/models/todo_model.dart';
import 'package:task_man/feature/todo/domain/entities/todo.dart';

abstract class TodoLocalDataSource {
  ///Throws [DataBaseException] if no data found
  Future<TodoModel> getTodo(int id);

  Future<List<TodoModel>> getAllTodo();

  Future<Todo> addTodo(String task);
}

class TodoLocalDataSourceImpl implements TodoLocalDataSource {
  TodoLocalDataSourceImpl();

  List<TodoModel> todoModelList = [
    TodoModel(task: 'This is example.', id: 0),
    TodoModel(task: 'task2', id: 1),
    TodoModel(task: 'task3', id: 2),
    TodoModel(task: 'task4', id: 3)
  ];

  @override
  Future<TodoModel> getTodo(int id) {
    final TodoModel? todoModel =
        todoModelList.firstWhereOrNull((element) => element.id == id);
    if (todoModel != null) {
      return Future.delayed(const Duration(seconds: 1), () => todoModel);
    } else {
      throw DataBaseException();
    }
  }

  @override
  Future<List<TodoModel>> getAllTodo() {
    return Future.delayed(const Duration(seconds: 1), () => todoModelList);
  }

  @override
  Future<Todo> addTodo(String task) {
    return Future.delayed(const Duration(seconds: 1), () {
      final todo = TodoModel(task: task, id: todoModelList.length);
      todoModelList.add(todo);
      return todo;
    });
  }
}
