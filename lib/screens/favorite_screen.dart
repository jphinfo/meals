import 'package:flutter/material.dart';
import '../models/meal.dart';

import '../components/meal_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen(
    this.favoriteMeals, {
    Key? key,
  }) : super(key: key);

  final List<Meal> favoriteMeals;

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text("Nenhuma refeição foi marcada como favorita!"),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (context, index) {
          return MealItem(
            meal: favoriteMeals[index],
            key: key,
          );
        },
      );
    }
  }
}
