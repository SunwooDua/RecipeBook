import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic> recipe;

  DetailsScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe['name'])),
      body: Column(
        children: [
          Row(
            children: [
              Text('Ingredients: '),
              Text(recipe['ingredients']),
            ],
          ),
          Row(
            children: [
              Text('Instruction: '),
              Text(recipe['instructions']),
            ],
          ),
        ],
      ),
    );
  }
}
