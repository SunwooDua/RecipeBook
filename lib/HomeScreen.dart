import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _recipes = [
    //using List<map> we can take key and value
    {
      'name': 'Soy-sauce Egg Rice',
      'ingredients':
          'Soy Sauce (2Tbsp or more), Eggs (usually 2), Rice (1 bowl), Sesame Oil (1Tbsp or more)',
      'instructions':
          'prepare rice (steam), prepare fried eggs, prepare spoon of soy sauce and ssame oil, mix them all and enjoy!',
    },
    {
      'name': 'Korean Style Sausage Stir Fry',
      'ingredients':
          'Vienna sausages (200g), Bell Peppers (70g), Onions (40g), Cooking Oil, Ketchup (2Tbsp), Soy Sauce (1/2 Tbsp), Sugar (1/2 Tbsp)',
      'instructions':
          'in heated skillet add cooking oil and cook sausage, add bell pepper and onions, pour sauce and mix for 1 minute, enjoy the food!',
    },
    {
      'name': 'Korean Tuna Mayo Deopbap',
      'ingredients':
          'Soy Sauce (1-2Tbsp), Eggs (1-2), Rice (1 bowl), Sesame Oil (1Tbsp), Canned Tuna, Mayo (2Tbsp or more), Korean Seasoned Seaweed Flakes (as many as you want)',
      'instructions':
          'prepare steamed rice, prepare fried eggs, in one bowl put all the ingrediens and mix, enjoy the food!',
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
