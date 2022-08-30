import 'package:flutter/material.dart';
import 'package:restaurant_app/model/meal.dart';

class MealItem extends StatelessWidget {
  Meal meal;
  MealItem({required this.meal});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Image(image: NetworkImage(meal.image)),
        Text(meal.Name),
      ]),
    );
  }
}
