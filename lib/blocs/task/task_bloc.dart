import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/task.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskState()) {
    on<AddTask>(_onAddTask);
    on<EditTask>(_onEditTask);
    on<DeleteTask>(_onDeleteTask);
  }

  void _onAddTask(AddTask event, Emitter<TaskState> emit) {
    var state = this.state;
    emit(TaskState(allTask: List.from(state.allTask)..add(event.task)));
  }

  void _onEditTask(EditTask event, Emitter<TaskState> emit) {}

  void _onDeleteTask(DeleteTask event, Emitter<TaskState> emit) {}
}
