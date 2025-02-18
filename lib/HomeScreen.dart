import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map> _Recipes = [
    //using List<map> we can take key and value
    {
      'name': 'Soy-sauce Egg Rice',
      'ingredients': 'Soy Sauce, Eggs, Rice, Sesame Oil',
      'instruction': 'do this and that',
    },
    {
      'name': 'Korean Style Sausage Stir Fry',
      'ingredients':
          'Vienna sausages, Bell Peppers, Onions, Cooking Oil, Ketchup, Soy Sauce, Sugar',
      'instruction': 'do this and that',
    },
    {
      'name': 'Korean Tuna Mayo Deopbap',
      'ingredients':
          'Soy Sauce, Eggs, Rice, Sesame Oil, Can Tuna, Mayo, Korean Seasoned Seaweed Flakes',
      'instruction': 'do this and that',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
          itemCount: _Recipes.length, // go through every recipes in _Recipes
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.restaurant_menu), //food icon
              title: Text(_Recipes[index]
                  ['name']), // only show name of recipe in homescreen
              onTap: () {}, //when touch recipe show detialed recipe
              subtitle: Text("click to see detailed information"),
              trailing: Icon(Icons.drag_handle), //drag handle icon at the end
            );
          }),
    );
  }
}
