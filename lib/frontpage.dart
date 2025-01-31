import 'package:flutter/material.dart';
import 'package:food_delivery/category.dart';
import 'package:food_delivery/meals.dart';
import 'category_grid.dart';
import 'dummy.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  void selectcategory(BuildContext context,Category category){
      final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>MealsScreen(title:category.title , meals: filteredMeals,)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('Pick your category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(category: category,Onselected: () {
              selectcategory(context,category);
            },)
        ],
      ),
    );
  }
}