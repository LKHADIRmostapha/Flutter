import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:food_cart_app/bloc/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';
import 'package:food_cart_app/model/foodItem.dart';

class CartListBloc extends BlocBase{
  CartListBloc();

  var _ListControler = BehaviorSubject<List<FoodItem>>.seeded([]);

  CartProvier provider = new CartProvier();

  //output
  Stream<List<FoodItem>> get ListStream => _ListControler.stream ;

  //input
  Sink<List<FoodItem>> get ListSink => _ListControler.sink ;


  addToList(FoodItem foodItem){
    ListSink.add(provider.addToList(foodItem));
  }

  removeFromList(FoodItem foodItem){
    ListSink.add(provider.removeFromList(foodItem));
  }

  @override
  void dispose() {// will be called automatically
    _ListControler.close();
    super.dispose();
  }

}