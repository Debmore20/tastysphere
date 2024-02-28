// import 'user_model.dart';

class Recipe {
  final String author;
  final String mealName;
  final List<String> ingridients;
  final List<String> steps;
  final DateTime timePosted;

  Recipe(this.author, this.mealName, this.ingridients, this.steps,
      this.timePosted);
}
