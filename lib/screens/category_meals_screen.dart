import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import '../widgets/meal_item.dart';
import '../models/meals.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String id;
  // final String title;

  // CategoryMealsScreen(this.id , this.title);

  @override
  Widget build(BuildContext context) {
    final routeargs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeargs['title']; // category TITLE
    final id = routeargs['id']; // category ID
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            duration: categoryMeals[index].duration,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
