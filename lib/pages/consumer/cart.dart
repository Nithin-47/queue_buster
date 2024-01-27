import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/loading.dart';

import 'package:flutter/cupertino.dart';

import '../../constants/cart-items.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<CartItems> cartitems = [
    CartItems(name: 'Gowda Canteen', location: 'BMS College', items: [
      Item(itemName: 'Veg Fried Maggie', price: '40'),
      Item(itemName: 'Kurkure', price: '20'),
      Item(itemName: 'Samosa', price: '20'),
      Item(itemName: 'Paneer Roll', price: '60')
    ]),
    CartItems(name: 'Just Bake', location: 'BMS College', items: [
      Item(itemName: 'Veg Fried Maggie', price: '40'),
      Item(itemName: 'Kurkure', price: '20'),
      Item(itemName: 'Samosa', price: '20'),
      Item(itemName: 'Paneer Roll', price: '60')
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Container(
              // color: Colors.lightGreen[500],
              height: 60,
              width: 280,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.elliptical(45, 45)),
                color: Colors.lightGreen[500],
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            child: Center(
              child: Text(
                'Scroll Horizontally to View your orders ->',
                style:
                    TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(30),
              itemCount: cartitems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, mainAxisSpacing: 14),
              itemBuilder: (BuildContext context, int index) {
                return GridTile(
                  // header: GridTileBar(
                  //   title: Text(cartitems[index].name,
                  //       style: const TextStyle(color: Colors.black)),
                  // ),
                  child: Container(
                    // color: Colors.grey,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(30),
                        bottom: Radius.circular(30),
                      ),
                      color: Colors.lightGreen[500],
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            spreadRadius: 0,
                            offset: Offset(2.0, 0.0))
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, left: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.pin_drop),
                              const SizedBox(width: 4),
                              Text(cartitems[index].name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            'Location : ${cartitems[index].location}',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount: cartitems[index].items.length,
                            itemBuilder: (BuildContext context, int i) {
                              return Card(
                                child: ListTile(
                                  leading: Text(
                                      '${cartitems[index].items[i].itemName} - Rs ${cartitems[index].items[i].price}'),
                                  trailing: TextButton(
                                      onPressed: () {},
                                      child: const Icon(Icons.delete)),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Container(
                height: 40,
                width: 100,
                // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: Offset(0.0, 1.0),
                    ),
                  ],

                  color: Colors.lightGreen[500],
                  // border: Border.all(width: 0.0),
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(45, 45)),
                ),
                child: const Center(child: Text('Checkout')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
