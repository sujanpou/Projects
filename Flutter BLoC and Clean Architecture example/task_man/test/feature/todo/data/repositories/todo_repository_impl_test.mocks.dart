// Mocks generated by Mockito 5.0.16 from annotations
// in task_man/test/feature/todo/data/repositories/todo_repository_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:task_man/feature/todo/data/datasources/todo_local_data_source.dart'
    as _i4;
import 'package:task_man/feature/todo/data/models/todo_model.dart' as _i2;
import 'package:task_man/feature/todo/domain/entities/todo.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeTodoModel_0 extends _i1.Fake implements _i2.TodoModel {}

class _FakeTodo_1 extends _i1.Fake implements _i3.Todo {}

/// A class which mocks [TodoLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTodoLocalDataSource extends _i1.Mock
    implements _i4.TodoLocalDataSource {
  MockTodoLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.TodoModel> getTodo(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTodo, [id]),
              returnValue: Future<_i2.TodoModel>.value(_FakeTodoModel_0()))
          as _i5.Future<_i2.TodoModel>);
  @override
  _i5.Future<List<_i2.TodoModel>> getAllTodo() =>
      (super.noSuchMethod(Invocation.method(#getAllTodo, []),
              returnValue: Future<List<_i2.TodoModel>>.value(<_i2.TodoModel>[]))
          as _i5.Future<List<_i2.TodoModel>>);
  @override
  _i5.Future<_i3.Todo> addTodo(String? task) =>
      (super.noSuchMethod(Invocation.method(#addTodo, [task]),
              returnValue: Future<_i3.Todo>.value(_FakeTodo_1()))
          as _i5.Future<_i3.Todo>);
  @override
  String toString() => super.toString();
}
