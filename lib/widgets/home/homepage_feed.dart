import 'package:flutter/material.dart';
import 'package:tastysphere/recipe_service/recipe_gen.dart';
import 'package:tastysphere/widgets/home/feed_item_home.dart';

class HomepageFeed extends StatelessWidget {
  const HomepageFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length,
      // from recipe_gen.dart
      itemBuilder: (BuildContext context, int index) {
        FinalRecipeList allRecipes = FinalRecipeList();
        allRecipes.recipeGen();

        return FeedItemHome(
          recipe: allRecipes.recipeList[index],
          index: index,
        );
      },
    );
  }
}
