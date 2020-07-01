import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String id;
  // final String title;

  // CategoryMealsScreen(this.id , this.title);

  @override
  Widget build(BuildContext context) {
    final routeargs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final title = routeargs['title']  ;
    final id = routeargs['id'] ;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'The Recipes for the Category',
        ),
      ),
    );
  }
}
