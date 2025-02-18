import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  final List _Recipes = ['Recipe 1', 'Recipe 2', 'Recipe 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
      ),
      body: ListView.builder(
          itemCount: _Recipes.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            );
          }),
    );
  }
}
