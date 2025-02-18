import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _recipes = [
    //using List<map> we can take key and value
    {
      'name': 'Soy-sauce Egg Rice',
      'ingredients': 'Soy Sauce, Eggs, Rice, Sesame Oil',
      'instructions': 'do this and that',
    },
    {
      'name': 'Korean Style Sausage Stir Fry',
      'ingredients':
          'Vienna sausages, Bell Peppers, Onions, Cooking Oil, Ketchup, Soy Sauce, Sugar',
      'instructions': 'do this and that',
    },
    {
      'name': 'Korean Tuna Mayo Deopbap',
      'ingredients':
          'Soy Sauce, Eggs, Rice, Sesame Oil, Can Tuna, Mayo, Korean Seasoned Seaweed Flakes',
      'instructions': 'do this and that',
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
          itemCount: _recipes.length, // go through every recipes in _Recipes
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.restaurant_menu), //food icon
              title: Text(_recipes[index]
                  ['name']), // only show name of recipe in homescreen
              onTap: () {
                //Navigator.push used to have following action when recipe is pressed
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        //MaterialPageRoute directs to DetailsScreen.dart when recipe is pressed
                        builder: (context) =>
                            DetailsScreen(recipe: _recipes[index])));
              }, //when touch recipe show detialed recipe
              subtitle: Text("click to see detailed information"),
              trailing: Icon(Icons.drag_handle), //drag handle icon at the end
            );
          }),
    );
  }
}
