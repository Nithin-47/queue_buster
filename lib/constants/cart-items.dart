


import 'package:mobile_app/pages/consumer/cart.dart';

class CartItems{

  String name;
  String location;
  List<Item> items = [];


  CartItems({required this.name,required this.location,required this.items});

}




class Item{

  String itemName;
  String price;

  Item({required this.itemName,required this.price});

}