import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String title;
  final String? description;
  final String dueDate;
  // final String category;
  final bool isDone;

  const Task({
    required this.title,
    required this.description,
    required this.dueDate,
    // required this.category,
    required this.isDone,
  });

  @override
  List get props => [
        title,
        description,
        dueDate,
        // category,
        isDone,
      ];
}
