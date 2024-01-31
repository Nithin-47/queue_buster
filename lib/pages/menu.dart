import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../constants/cart_items.dart';
import '../constants/route_names.dart';
import '../main.dart';

class MenuPage extends StatefulWidget {
  final int id;

  const MenuPage({super.key, required this.id});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Item> items = [];


  // List<Item> items = [
  //
  // Item(itemName: 'Veg Fried Maggie', price: '40'),
  // Item(itemName: 'Kurkure', price: '20'),
  // Item(itemName: 'Samosa', price: '20'),
  // Item(itemName: 'Paneer Roll', price: '60'),
  //
  // ];

  void getData() async {
    try {
      final data = await supabase
          .from('items')
          .select('name,price,store_id')
          .eq('store_id', widget.id);

      for (var elements in data) {
        debugPrint("hey there!");
        items.add(Item(itemName: elements["name"], price: elements["price"], quantity: 0));
        setState(() {});
      }
    } catch (e) {
      debugPrint("Error: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    debugPrint("${widget.id}");
    getData();

    // resData.forEach((element) { })
  }

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
            child: const Column(children: [
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
            ]),
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
          child: items.isNotEmpty
              ? ListView.builder(

                  padding: const EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    int itemCounter = 0;

                    return Card(
                      elevation: 2,
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(items[index].itemName,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              Text('price - ${items[index].price}',style: const TextStyle(fontSize: 14,fontWeight: FontWeight.normal),)
                            ],
                          ),
                          SizedBox(width: 105,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end  ,
                            children: [
                              TextButton(onPressed: () {
                                setState(() {
                                  if(items[index].quantity != 0)
                                    {
                                      items[index].quantity-=1;
                                    }

                                });
                              }, child: const Icon(Icons.remove)),
                              Text('${items[index].quantity}'),
                              TextButton(onPressed: () {
                                setState(() {
                                  items[index].quantity+=1;
                                });
                              }, child: const Icon(Icons.add)),
                            ],
                          )

                        ],
                      )
                    );
                  },
                )
              : const Center(
                  child: SpinKitSpinningLines(
                    size: 140,
                    color: Colors.black,
                  ),
                ),
        )
      ],
    ));
  }
}


//
// class CustomListItem extends StatelessWidget {
//   const CustomListItem({
//     super.key,
//     required this.thumbnail,
//     required this.title,
//     required this.user,
//     required this.viewCount,
//   });
//
//   final Widget thumbnail;
//   final String title;
//   final String user;
//   final int viewCount;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 5.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Expanded(
//             flex: 2,
//             child: thumbnail,
//           ),
//           Expanded(
//             flex: 3,
//             child: _VideoDescription(
//               title: title,
//               user: user,
//               viewCount: viewCount,
//             ),
//           ),
//           const Icon(
//             Icons.more_vert,
//             size: 16.0,
//           ),
//         ],
//       ),
//     );
//   }
// }
