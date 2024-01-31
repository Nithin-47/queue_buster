class CartItems{

  String name;
  String location;
  List<Item> items = [];


  CartItems({required this.name,required this.location,required this.items});

}




class Item{

  String itemName;
  int price;
  int quantity;

  Item({required this.itemName,required this.price, required this.quantity});

}