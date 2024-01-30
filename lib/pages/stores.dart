import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:queue_buster/constants/shops.dart';
import 'package:queue_buster/widgets/search_bar.dart';

import '../constants/route_names.dart';

class StoresPage extends StatefulWidget {
  const StoresPage({super.key});

  @override
  State<StoresPage> createState() => _StoresPageState();
}

class _StoresPageState extends State<StoresPage> {
  List<Shops> shops = [
    Shops(name: 'Gowda Canteen', photo: 'Assets/login.png'),
    Shops(name: 'Just Bake', photo: 'Assets/login.png'),
    Shops(name: 'Vidyarthi Khaana', photo: 'Assets/login.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(14, 28, 27.91, 15),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          // Container(
          //   margin: const EdgeInsets.fromLTRB(43, 30, 15.09, 38),
          //   child: TextButton(
          //     onPressed: () {},
          //     style: TextButton.styleFrom(
          //       padding: EdgeInsets.zero,
          //     ),
          //     child: Container(
          //       padding: const EdgeInsets.fromLTRB(36, 12, 14.81, 10),
          //       width: double.infinity,
          //       decoration: BoxDecoration(
          //         color: const Color(0xffbfefb1),
          //         borderRadius: BorderRadius.circular(20),
          //         boxShadow: const [
          //           BoxShadow(
          //             color: Color(0x3f000000),
          //             offset: Offset(0, 4),
          //             blurRadius: 2,
          //           ),
          //         ],
          //       ),
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Container(
          //             // searchCLk (31:28)
          //             margin: const EdgeInsets.fromLTRB(0, 6, 158, 0),
          //             child: const Text(
          //               'Search..',
          //               style: TextStyle(
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w400,
          //                 height: 1.375,
          //                 color: Color(0xff000000),
          //               ),
          //             ),
          //           ),
          //           Container(
          //               // vector7Cp (31:26)
          //               margin: const EdgeInsets.fromLTRB(0, 0, 17, 3),
          //               width: 25,
          //               height: 25,
          //               child: const Icon(Icons.search)),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          const SearchBarApp(),
          // Container(
          //   // filtersZ4p (35:25)
          //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 39),
          //   width: double.infinity,
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       Container(
          //         // line5gv8 (31:89)
          //         margin: const EdgeInsets.fromLTRB(0, 3, 8, 0),
          //         width: 31,
          //         height: 1,
          //         decoration: const BoxDecoration(
          //           color: Color(0xff000000),
          //         ),
          //       ),
          //       Container(
          //         margin: const EdgeInsets.fromLTRB(0, 1, 8, 0),
          //         padding: const EdgeInsets.fromLTRB(13, 8, 9, 7),
          //         child: Row(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Container(
          //                 // vectorWPN (33:3)
          //                 margin: const EdgeInsets.fromLTRB(0, 0, 5, 3),
          //                 width: 22,
          //                 height: 19,
          //                 child: const Icon(Icons.sort)),
          //             const Text(
          //               'Sort by',
          //               style: TextStyle(
          //                 fontSize: 14,
          //                 fontWeight: FontWeight.w400,
          //                 height: 1.375,
          //                 color: Color(0xff000000),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Container(
          //         // vegaPE (32:121)
          //         margin: const EdgeInsets.fromLTRB(0, 0, 8, 1),
          //         width: 105,
          //         height: 37,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(25),
          //         ),
          //         child: const Center(
          //           child: Text(
          //             'Veg',
          //             style: TextStyle(
          //               fontSize: 14,
          //               fontWeight: FontWeight.w400,
          //               height: 1.375,
          //               color: Color(0xff000000),
          //             ),
          //           ),
          //         ),
          //       ),
          //       Container(
          //         margin: const EdgeInsets.fromLTRB(0, 0, 8, 1),
          //         width: 105,
          //         height: 37,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(25),
          //         ),
          //         child: const Center(
          //           child: Text(
          //             'Price',
          //             style: TextStyle(
          //               fontSize: 14,
          //               fontWeight: FontWeight.w400,
          //               height: 1.375,
          //               color: Color(0xff000000),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 40,
            child: Center(
              child: Text(
                  'Nearby Stores',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: shops.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    context.push(RouteNames.menu.path);
                  },
                  child: Card(
                    child: ListTile(
                      leading: Image(image: AssetImage(shops[index].photo)),
                      title: Text(shops[index].name),
                      subtitle: const Text('Here is a second line'),
                      trailing: const Icon(Icons.more_vert),
                    ),
                  ),
                );
              },
            ),
          )
        ]));
  }
}
