import 'package:flutter/material.dart';
import 'package:food_delivery/dummy_meal.dart';
import 'package:food_delivery/recipe.dart';
import 'meal_item.dart';


class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
  });


  final String title;
  final List<Meal> meals;
  void Seelctmeal(BuildContext context,Meal meal){
    Navigator.of(context).push(MaterialPageRoute(builder:((context) =>MealsDetailsScreen(meal:meal )  ),),);
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(meal: meals[index],Onselected: (meal) {
          Seelctmeal(context,meal);
        },)
      );
    }

    return Scaffold(
      appBar: AppBar(
        
        title: Text(title),
      ),
      body: content,
    );
  }
}