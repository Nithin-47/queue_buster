class CartItems {
  String name;
  String location;
  List<Item> items = [];

  CartItems({required this.name, required this.location, required this.items});
}

class Item {
  int id;
  String name;
  int price;
  int quantity;
  int storeId;
  String storeName;

  Item(
      {required this.id,
      required this.name,
      required this.price,
      required this.quantity,
      required this.storeId,
      required this.storeName});
}
