part of 'task_bloc.dart';

// ignore: must_be_immutable
class TaskState extends Equatable {
  List<Task> allTask;

  TaskState({this.allTask = const <Task>[]});

  @override
  List<Object?> get props => [allTask];
}
