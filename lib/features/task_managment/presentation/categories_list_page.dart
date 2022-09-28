import 'package:fellow_task/features/task_managment/domain/entities/category.dart';
import 'package:fellow_task/features/task_managment/domain/entities/mocks/category_factory.dart';
import 'package:fellow_task/features/task_managment/presentation/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesListPage extends StatelessWidget {
  CategoriesListPage({Key? key}) : super(key: key);

  final List<Category> categories = CategoryFactory.buildCategoryList(5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de categorias'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          children: [
            const SizedBox(height: 8),
            SingleChildScrollView(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: categories.length,
                itemBuilder: (_, index) => CategoryCard(
                  title: categories[index].title,
                ),
                separatorBuilder: (_, index) => const SizedBox(height: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
