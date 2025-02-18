import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic>
      recipe; //recive recpies from HomeScreen as this format Map<String, dynamic>

  DetailsScreen({required this.recipe}); // make sure you got recipe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(recipe['name']),
          backgroundColor: Colors.green), // show name of recipe at appbar
      body: Padding(
        padding: EdgeInsets.all(20.0), // for better view
        child: SingleChildScrollView(
            // prevent from overflowing
            child: Flex(
          // same
          direction: Axis.vertical, //stack vertically not horizontally
          crossAxisAlignment: CrossAxisAlignment
              .start, //using cross and start to make sure everything starts from very left
          children: [
            //show ingredients and instrctions
            Text(
              'Ingredients: ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(recipe['ingredients'],
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber)),
            SizedBox(
              height: 20,
            ), //want to have gap between ingredients and instructions
            Text('Instruction: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(recipe['instructions'],
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber))
          ],
        )),
      ),
    );
  }
}
