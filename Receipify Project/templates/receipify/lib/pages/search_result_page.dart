import 'package:flutter/material.dart';
import 'package:receipify/pages/home_page.dart';
import 'package:receipify/models/core/recipe.dart';
import 'package:receipify/models/helper/recipe_helper.dart';
//import recipe tile.dart

//KURANG RECIPE TILE

class SearchResult extends StatelessWidget {
  final TextEditingController searchInputController = TextEditingController();
  //final List<Recipe> SearchResultRecipe = RecipeHelper.SearchResultRecipe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Search result',
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'MontserratBold',
                fontWeight: FontWeight.w800,
                fontSize: 16)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new HomePage()));
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        shrinkWrap: true,
        itemCount: 10,
        //itemCount: searchResultRecipe.length,
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(height: 16);
        },
        itemBuilder: (context, index) {
          return SizedBox(height: 10);
          //return RecipeTile(
          //  data: searchResultRecipe[index],
        },
      ),
    );
  }
}
