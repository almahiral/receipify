import 'package:flutter/material.dart';
import 'package:receipify/widgets/meal_type_card.dart';
import 'package:receipify/widgets/recipe_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.grey[20],
        elevation: 0,
        centerTitle: true,
        title: Text('Receipify',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'MontserratBold',
                fontWeight: FontWeight.w800,
                fontSize: 20)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // force all text to take available width of the column
          children: [
            // Container(
            //   padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
            //   child: Text('Receipify',
            //       style: TextStyle(
            //         color: Theme.of(context).primaryColor,
            //         fontWeight: FontWeight.w800,
            //         fontSize: 24,
            //         letterSpacing: 0.5,
            //       )),
            // ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Row(
                children: [
                  Text(
                    'What would you like to \ncook today?',
                    style: TextStyle(
                      fontFamily: 'MontserratBold',
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 75,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[200],
                          ),
                          borderRadius: BorderRadius.circular(14.0),
                        ),
                        hintText: 'fried chicken, pasta aglio olio, ...',
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: Text(
                'Popular Recipes',
                style: TextStyle(
                  fontFamily: 'MontserratBold',
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  RecipeCard(
                    imgSrc:
                        'https://images.unsplash.com/photo-1630914441934-a29bf360934c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
                    title: 'Shrimp Fried Rice',
                    prepTime: 'Easy',
                    cookTime: '15 mins',
                  ),
                  RecipeCard(
                    imgSrc:
                        'https://images.unsplash.com/photo-1630914441934-a29bf360934c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
                    title: 'Shrimp Fried Rice',
                    prepTime: 'Medium',
                    cookTime: '15 mins',
                  ),
                  RecipeCard(
                    imgSrc:
                        'https://images.unsplash.com/photo-1630914441934-a29bf360934c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
                    title: 'Shrimp Fried Rice',
                    prepTime: 'Medium',
                    cookTime: '15 mins',
                  ),
                  RecipeCard(
                    imgSrc:
                        'https://images.unsplash.com/photo-1630914441934-a29bf360934c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
                    title: 'Shrimp Fried Rice',
                    prepTime: 'Hard',
                    cookTime: '15 mins',
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              padding: EdgeInsets.fromLTRB(30, 20, 30, 15),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Theme.of(context).primaryColor,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.receipt_long_outlined,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey[200],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'See completed & history',
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MealTypeCard(
                    title: 'Potato',
                    icon: Icons.breakfast_dining,
                  ),
                  MealTypeCard(
                    title: 'Chicken',
                    icon: Icons.lunch_dining,
                  ),
                  MealTypeCard(
                    title: 'Rice',
                    icon: Icons.icecream,
                  ),
                  MealTypeCard(
                    title: 'Noodle',
                    icon: Icons.dinner_dining,
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       RecipeCard(
            //         imgSrc:
            //             'https://images.unsplash.com/photo-1630914441934-a29bf360934c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
            //         title: 'Shrimp Fried Rice',
            //         prepTime: '15 mins',
            //         cookTime: '15 mins',
            //       ),
            //       RecipeCard(
            //         imgSrc:
            //             'https://images.unsplash.com/photo-1630914441934-a29bf360934c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
            //         title: 'Shrimp Fried Rice',
            //         prepTime: '15 mins',
            //         cookTime: '15 mins',
            //       ),
            //       RecipeCard(
            //         imgSrc:
            //             'https://images.unsplash.com/photo-1630914441934-a29bf360934c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
            //         title: 'Shrimp Fried Rice',
            //         prepTime: '15 mins',
            //         cookTime: '15 mins',
            //       ),
            //       RecipeCard(
            //         imgSrc:
            //             'https://images.unsplash.com/photo-1630914441934-a29bf360934c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
            //         title: 'Shrimp Fried Rice',
            //         prepTime: '15 mins',
            //         cookTime: '15 mins',
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
