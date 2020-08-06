
import 'package:food_cart_app/model/foodItem.dart';



class CartProvier {

  List<FoodItem> foodItems = [];


  List<FoodItem> addToList(FoodItem foodItem){
    foodItems.add(foodItem);
    return foodItems;
  }

  List<FoodItem> removeFromList(FoodItem foodItem){
    foodItems.remove(foodItem);
    return foodItems;
  }

}