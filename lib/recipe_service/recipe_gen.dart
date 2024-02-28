import 'package:tastysphere/modeldb/recipe_model.dart';

class FinalRecipeList {
  List<Recipe> recipeList = [];

  void recipeGen() {
    for (var i = 0; i < names.length; i++) {
      recipeList
          .add(Recipe(names[i], mealNames[i], ingrid, steps, DateTime.now()));
    }
  }
}

List<String> names = [
  'Ava Thompson',
  'Liam Rodriguez',
  'Mia Patel',
  'Noah Campbell',
  'Olivia Mitchell',
  'Ethan Turner',
  'Emma Parker',
  'Lucas Sanchez',
];

List<String> mealNames = [
  'Spaghetti Bolognese',
  'Chicken Alfredo',
  'Vegetarian Stir-Fry',
  'Grilled Salmon with Lemon Dill Sauce',
  'Margherita Pizza',
  'Beef Tacos with Fresh Salsa',
  'Mushroom Risotto',
  'Teriyaki Chicken Bowl',
];

List<String> ingrid = [
  'Quinoa',
  'Avocado',
  'Spinach',
  'Cherry Tomatoes',
  'Salmon Fillet',
  'Garlic Cloves',
  'Olive Oil',
  'Ground Cumin',
  'Lemon Zest',
  'Parmesan Cheese',
];
List<String> steps = [
  'Start by rinsing the quinoa under cold water.',
  'Chop the garlic cloves finely.',
  'In a pan, heat olive oil over medium heat.',
  'Add the chopped garlic and sauté until golden brown.',
  'Add the quinoa to the pan and toast for a couple of minutes.',
  'Pour in the recommended amount of water or broth for the quinoa.',
  'Bring the mixture to a boil, then reduce the heat to simmer, cover, and cook until quinoa is tender.',
  'While the quinoa is cooking, season the salmon fillet with salt, pepper, and lemon zest.',
  'In a separate pan, grill the seasoned salmon fillet until cooked through.',
  'In a large bowl, toss together chopped spinach, halved cherry tomatoes, and diced avocado.',
  'Fluff the cooked quinoa with a fork and combine it with the spinach, tomatoes, and avocado mixture.',
  'Serve the quinoa salad topped with the grilled salmon and a sprinkle of Parmesan cheese.',
];
