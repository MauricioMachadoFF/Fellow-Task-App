import 'package:equatable/equatable.dart';
import 'package:fellow_task/features/task_managment/domain/entities/task.dart';

class Category extends Equatable {
  final String title;
  final List<Task> tasks;

  const Category({
    required this.title,
    required this.tasks,
  });

  @override
  List get props => [];
}
