import 'package:flutter/material.dart';
import 'package:queue_buster/constants/route_names.dart';
import 'package:go_router/go_router.dart';
import 'package:queue_buster/pages/loading.dart';
import 'package:queue_buster/constants/foods.dart';
import 'package:queue_buster/constants/shops.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = false;

  List<Foods> foods = [
    Foods(name: 'Pizza', photo: 'Assets/login.png'),
    Foods(name: 'Burger', photo: 'Assets/login.png'),
    Foods(name: 'Tea', photo: 'Assets/login.png'),
    Foods(name: 'Coffee', photo: 'Assets/login.png'),
    Foods(name: 'Biryani', photo: 'Assets/login.png'),
    Foods(name: 'Biscuits', photo: 'Assets/login.png'),
    Foods(name: 'Chiya', photo: 'Assets/login.png'),
    Foods(name: 'Maggie', photo: 'Assets/login.png'),
    Foods(name: 'Puffs', photo: 'Assets/login.png'),
    Foods(name: 'Samosa', photo: 'Assets/login.png'),
  ];

  List<Shops> shops = [
    Shops(name: 'Gowda Canteen', photo: 'Assets/login.png'),
    Shops(name: 'Just Bake', photo: 'Assets/login.png'),
    Shops(name: 'Vidyarthi Khaana', photo: 'Assets/login.png'),
    Shops(name: 'Anna Tea Guy', photo: 'Assets/login.png'),
  ];

  @override
  Widget build(BuildContext context) => isLoading
      ? const Loading()
      : SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: InkWell(
                        onTap: () {
                          context.go(RouteNames.consumerLocation.path);
                        },
                        borderRadius:
                            const BorderRadius.all(Radius.elliptical(45, 45)),
                        child: Container(
                          height: 70,
                          width: 160,
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
                            borderRadius: const BorderRadius.all(
                                Radius.elliptical(45, 45)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(
                                  Icons.location_city,
                                  color: Colors.red[600],
                                  size: 30,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 5, right: 30),
                                child: Text(
                                  'Kudla',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.black,
                              spreadRadius: 0,
                              offset: Offset(0.0, 1.0)),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundImage: const AssetImage('Assets/login.png'),
                        radius: 35,
                        backgroundColor: Colors.lightGreen[500],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const SearchBarApp(),

              // Padding(
              //   padding: const EdgeInsets.only(top: 20, bottom: 20),
              //   child: Container(
              //     // color: Colors.lightGreen[500],
              //     height: 60,
              //     width: 280,
              //     decoration: BoxDecoration(
              //       borderRadius:
              //           const BorderRadius.all(Radius.elliptical(45, 45)),
              //       color: Colors.lightGreen[500],
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.all(18.0),
              //       child: Container(
              //         alignment: Alignment.centerRight,
              //         child: const Icon(Icons.search),
              //       ),
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.black,
                        height: 1.5,
                        width: 1.5,
                      ),
                    ),
                    const Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          'Whats on your Mind Today?',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.black,
                        height: 1.5,
                        width: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Container(
              //         // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              //         decoration: const BoxDecoration(
              //           color: Colors.white,
              //           shape: BoxShape.circle,
              //           boxShadow: [
              //             BoxShadow(
              //                 blurRadius: 5,
              //                 color: Colors.black,
              //                 spreadRadius: 0,
              //                 offset: Offset(0.0, 1.0)),
              //           ],
              //         ),
              //         child: CircleAvatar(
              //           // backgroundImage: AssetImage('Assets/login.png'),
              //           radius: 35,
              //           backgroundColor: Colors.lightGreen[500],
              //         ),
              //       ),
              //       Container(
              //         // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              //         decoration: const BoxDecoration(
              //           color: Colors.white,
              //           shape: BoxShape.circle,
              //           boxShadow: [
              //             BoxShadow(
              //                 blurRadius: 5,
              //                 color: Colors.black,
              //                 spreadRadius: 0,
              //                 offset: Offset(0.0, 1.0)),
              //           ],
              //         ),
              //         child: CircleAvatar(
              //           // backgroundImage: AssetImage('Assets/login.png'),
              //           radius: 35,
              //           backgroundColor: Colors.lightGreen[500],
              //         ),
              //       ),
              //       Container(
              //         // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              //         decoration: const BoxDecoration(
              //           color: Colors.white,
              //           shape: BoxShape.circle,
              //           boxShadow: [
              //             BoxShadow(
              //                 blurRadius: 5,
              //                 color: Colors.black,
              //                 spreadRadius: 0,
              //                 offset: Offset(0.0, 1.0)),
              //           ],
              //         ),
              //         child: CircleAvatar(
              //           // backgroundImage: AssetImage('Assets/login.png'),
              //           radius: 35,
              //           backgroundColor: Colors.lightGreen[500],
              //         ),
              //       ),
              //       Container(
              //         // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              //         decoration: const BoxDecoration(
              //           color: Colors.white,
              //           shape: BoxShape.circle,
              //           boxShadow: [
              //             BoxShadow(
              //                 blurRadius: 5,
              //                 color: Colors.black,
              //                 spreadRadius: 0,
              //                 offset: Offset(0.0, 1.0)),
              //           ],
              //         ),
              //         child: CircleAvatar(
              //           // backgroundImage: AssetImage('Assets/login.png'),
              //           radius: 35,
              //           backgroundColor: Colors.lightGreen[500],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //       top: 18, left: 10, right: 10, bottom: 30),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Container(
              //         // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              //         decoration: const BoxDecoration(
              //           color: Colors.white,
              //           shape: BoxShape.circle,
              //           boxShadow: [
              //             BoxShadow(
              //                 blurRadius: 5,
              //                 color: Colors.black,
              //                 spreadRadius: 0,
              //                 offset: Offset(0.0, 1.0)),
              //           ],
              //         ),
              //         child: CircleAvatar(
              //           // backgroundImage: AssetImage('Assets/login.png'),
              //           radius: 35,
              //           backgroundColor: Colors.lightGreen[500],
              //         ),
              //       ),
              //       Container(
              //         // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              //         decoration: const BoxDecoration(
              //           color: Colors.white,
              //           shape: BoxShape.circle,
              //           boxShadow: [
              //             BoxShadow(
              //                 blurRadius: 5,
              //                 color: Colors.black,
              //                 spreadRadius: 0,
              //                 offset: Offset(0.0, 1.0)),
              //           ],
              //         ),
              //         child: CircleAvatar(
              //           // backgroundImage: AssetImage('Assets/login.png'),
              //           radius: 35,
              //           backgroundColor: Colors.lightGreen[500],
              //         ),
              //       ),
              //       Container(
              //         // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              //         decoration: const BoxDecoration(
              //           color: Colors.white,
              //           shape: BoxShape.circle,
              //           boxShadow: [
              //             BoxShadow(
              //                 blurRadius: 5,
              //                 color: Colors.black,
              //                 spreadRadius: 0,
              //                 offset: Offset(0.0, 1.0)),
              //           ],
              //         ),
              //         child: CircleAvatar(
              //           // backgroundImage: AssetImage('Assets/login.png'),
              //           radius: 35,
              //           backgroundColor: Colors.lightGreen[500],
              //         ),
              //       ),
              //       Container(
              //         // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
              //         decoration: const BoxDecoration(
              //           color: Colors.white,
              //           shape: BoxShape.circle,
              //           boxShadow: [
              //             BoxShadow(
              //                 blurRadius: 5,
              //                 color: Colors.black,
              //                 spreadRadius: 0,
              //                 offset: Offset(0.0, 1.0)),
              //           ],
              //         ),
              //         child: CircleAvatar(
              //           // backgroundImage: AssetImage('Assets/login.png'),
              //           radius: 35,
              //           backgroundColor: Colors.lightGreen[500],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 180,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  itemCount: foods.length,

                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      crossAxisCount: 2,

                      childAspectRatio: 0.8,

                      // mainAxisExtent: 60,
                  ),
                  // Try uncommenting some of these properties to see the effect on the grid:
                  // itemCount: 20, // The default is that the number of grid tiles is infinite.
                  scrollDirection: Axis.horizontal,

                  // The default is vertical.
                  // reverse: true, // The default is false, going down (or left to right).
                  itemBuilder: (BuildContext context, int index) {
                    return GridTile(
                      // header: GridTileBar(
                      //   title: Text('$index',
                      //       style: const TextStyle(color: Colors.black)),
                      // ),
                      child: Container(

                        color: Colors.grey,
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(foods[index].photo),
                              height: 60,
                              width: 60,
                            ),
                            Text(foods[index].name)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                      bottom: Radius.zero,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 18.0, left: 0),
                        child: Text(
                          'Canteens Right on You',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 270,
                        width: double.infinity,
                        child: GridView.builder(
                          padding: const EdgeInsets.all(30),
                          itemCount: shops.length,

                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 24,
                                  crossAxisSpacing: 24,
                                  childAspectRatio: 1.8,
                                  crossAxisCount: 2
                              ),
                          // Try uncommenting some of these properties to see the effect on the grid:
                          // itemCount: 20, // The default is that the number of grid tiles is infinite.
                          // scrollDirection: Axis.horizontal, // The default is vertical.
                          // reverse: true, // The default is false, going down (or left to right).
                          itemBuilder: (BuildContext context, int index) {
                            return GridTile(
                              // header: GridTileBar(
                              //   title: Text('$index',
                              //       style: const TextStyle(color: Colors.black)),
                              // ),
                              child: Container(
                                color: Colors.grey,
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage(shops[index].photo),
                                      height: 60,
                                      width: 60,
                                    ),
                                    Text(shops[index].name)
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Container(
              //   // bottomVPa (23:173)
              //   padding: const EdgeInsets.only(top: 14),
              //   width: double.infinity,
              //   height: 68,
              //   // decoration:  BoxDecoration (
              //   //   image:  DecorationImage (
              //   //     fit:  BoxFit.cover,
              //   //     image:  NetworkImage (
              //   //         [Image url]
              //   //     ),
              //   //   ),
              //   // ),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Expanded(
              //           // vector8Be (18:12)
              //           // flex: 1,
              //           child: TextButton.icon(
              //               onPressed: () {},
              //               icon: const Icon(
              //                 Icons.home,
              //                 color: Colors.black,
              //                 size: 30,
              //               ),
              //               label: const Text(''))),
              //       Expanded(
              //           // vectorzUk (18:20)
              //           //   flex: 1,
              //
              //           child: TextButton.icon(
              //               onPressed: () {},
              //               icon: const Icon(
              //                 Icons.shop,
              //                 color: Colors.black,
              //                 size: 30,
              //               ),
              //               label: const Text(''))),
              //       Expanded(
              //
              //
              //           child: TextButton.icon(
              //               onPressed: () {},
              //               icon: const Icon(
              //                 Icons.search,
              //                 color: Colors.black,
              //                 size: 30,
              //               ),
              //               label: const Text(''))),
              //       Expanded(
              //           // vectorCse (18:16)
              //           //   flex: 1,
              //
              //           child: TextButton.icon(
              //               onPressed: () {},
              //               icon: const Icon(
              //                 Icons.add_shopping_cart,
              //                 color: Colors.black,
              //                 size: 30,
              //               ),
              //               label: const Text(''))),
              //       Expanded(
              //           // vector3dN (18:14)
              //           //   flex: 1,
              //
              //           child: TextButton.icon(
              //               onPressed: () {},
              //               icon: const Icon(
              //                 Icons.settings,
              //                 color: Colors.black,
              //                 size: 30,
              //               ),
              //               label: const Text(''))),
              //     ],
              //   ),
              // ),
            ],
          ),
        );
}
