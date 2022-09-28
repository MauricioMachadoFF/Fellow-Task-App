import 'dart:math';

import 'package:fellow_task/features/task_managment/domain/entities/category.dart';
import 'package:fellow_task/features/task_managment/domain/entities/mocks/task_factory.dart';
import 'package:fellow_task/features/task_managment/domain/entities/task.dart';

abstract class CategoryFactory {
  static List<Category> buildCategoryList(int categoryAmount) {
    List<Category> categories = [];
    for (int i = 0; i < categoryAmount; i++) {
      categories.add(CategoryFactory.build(5));
    }
    return categories;
  }

  static Category build(int tasksAmount) {
    List<Task> tasks = [];
    for (int i = 0; i < tasksAmount; i++) {
      tasks.add(TaskFactory.build());
    }
    final categoryId = Random().nextInt(100000);
    return Category(
      title: 'any_category_title $categoryId',
      tasks: tasks,
    );
  }
}
