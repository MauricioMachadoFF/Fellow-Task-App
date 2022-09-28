import 'package:fellow_task/features/task_managment/domain/entities/task.dart';
import 'package:random_date/random_date.dart';

abstract class TaskFactory {
  static Task build() {
    return Task(
      title: 'any_task_title',
      description: 'any_description',
      dueDate: RandomDate.withStartYear(2022).random().toString(),
      // category: category,
      isDone: false,
    );
  }
}
