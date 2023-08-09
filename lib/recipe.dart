import 'package:flutter/material.dart';
import 'package:food_delivery/dummy_meal.dart';

class MealsDetailsScreen extends StatelessWidget {
  const MealsDetailsScreen({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          meal.title,
        ),
      ),
      body: ListView(
        children: [
          Image.network(
            meal.imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Ingredients',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.deepOrange,
                  ),
            ),
          ),
          for (final ingredients in meal.ingredients)
            Center(

              child: Text(
                
                ingredients,
                textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground)),
            ),
                    
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Steps',
              
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.deepOrange,
                  ),),
          ),
          for (final steps in meal.steps)
            Center(
              child: Text(steps,
              textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground)),
            )
        ],
      ),
    );
  }
}
