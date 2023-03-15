import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Task extends Equatable {
  final String id;
  final String title;
  bool? isCompleted;
  bool? isDeleted;

  Task({
    required this.id,
    required this.title,
    this.isCompleted,
    this.isDeleted,
  }) {
    isCompleted = isCompleted ?? false;
    isDeleted = isDeleted ?? false;
  }

  Task copyWith({
    String? id,
    String? title,
    bool? isCompleted,
    bool? isDeleted,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? false,
      isDeleted: isDeleted ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'isCompleted': isCompleted,
      'isDeleted': isDeleted
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
        id: map["id"] ?? '',
        title: map["title"] ?? '',
        isCompleted: map["isCompleted"] ?? '',
        isDeleted: map["isDeleted"] ?? '');
  }

  @override
  List<Object?> get props => [id, title, isCompleted, isDeleted];
}
