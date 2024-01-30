import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/cart_items.dart';
import '../constants/route_names.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  List<Item> items = [

  Item(itemName: 'Veg Fried Maggie', price: '40'),
  Item(itemName: 'Kurkure', price: '20'),
  Item(itemName: 'Samosa', price: '20'),
  Item(itemName: 'Paneer Roll', price: '60'),
    Item(itemName: 'Veg Fried Maggie', price: '40'),
    Item(itemName: 'Kurkure', price: '20'),
    Item(itemName: 'Samosa', price: '20'),
    Item(itemName: 'Paneer Roll', price: '60'),
    Item(itemName: 'Veg Fried Maggie', price: '40'),
    Item(itemName: 'Kurkure', price: '20'),
    Item(itemName: 'Samosa', price: '20'),
    Item(itemName: 'Paneer Roll', price: '60')

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
             Expanded(


               flex: 1,
               // height: 450,
               // width: double.infinity,
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: const BorderRadius.vertical(
                     // bottom: Radius.circular(30),
                     top: Radius.zero,
                   ),
                   color: Colors.grey[400],
                   boxShadow: const [
                     BoxShadow(
                         blurRadius: 5,
                         color: Colors.grey,
                         spreadRadius: 2,
                         offset: Offset(2.0, 0.0))
                   ],
                 ),
                 child: const Column(
                     children: [
                       Center(
                         child: Text(
                           'Lund Ke Baal',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 35,
                           ),
                         ),
                       ),
                       Center(
                         child: CircleAvatar(
                           // backgroundImage: ,
                           radius: 60,
                         ),
                       )
                     ]
                 ),
               ),
             ),
            const Divider(
              height: 3,
            ),
            // const Expanded(
            //   flex: 1,
            //     child: Text('Food Items Available -')),

            // SizedBox(height: 20,),
            Expanded(
              flex: 3,
              child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    child: ListTile(
                      leading: Text(items[index].price),
                      title: Text(items[index].itemName),
                      subtitle: const Text('Here is a second line'),
                      trailing: const Icon(Icons.more_vert),
                    ),
                  );
              },
            ),)
            

          ],
        )
    );
  }
}
