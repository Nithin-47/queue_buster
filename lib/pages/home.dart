import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/loading.dart';
import 'package:mobile_app/constants/route_names.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) => isLoading
      ? const Loading()
      : SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
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
                          borderRadius:
                              const BorderRadius.all(Radius.elliptical(45, 45)),
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
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: Container(
                  // color: Colors.lightGreen[500],
                  height: 60,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(45, 45)),
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
              Row(
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
                    child: Padding(
                      padding: EdgeInsets.only(left: 18),
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
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                        // backgroundImage: AssetImage('Assets/login.png'),
                        radius: 35,
                        backgroundColor: Colors.lightGreen[500],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                        // backgroundImage: AssetImage('Assets/login.png'),
                        radius: 35,
                        backgroundColor: Colors.lightGreen[500],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                        // backgroundImage: AssetImage('Assets/login.png'),
                        radius: 35,
                        backgroundColor: Colors.lightGreen[500],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                        // backgroundImage: AssetImage('Assets/login.png'),
                        radius: 35,
                        backgroundColor: Colors.lightGreen[500],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 18, left: 10, right: 10, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                        // backgroundImage: AssetImage('Assets/login.png'),
                        radius: 35,
                        backgroundColor: Colors.lightGreen[500],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                        // backgroundImage: AssetImage('Assets/login.png'),
                        radius: 35,
                        backgroundColor: Colors.lightGreen[500],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                        // backgroundImage: AssetImage('Assets/login.png'),
                        radius: 35,
                        backgroundColor: Colors.lightGreen[500],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                        // backgroundImage: AssetImage('Assets/login.png'),
                        radius: 35,
                        backgroundColor: Colors.lightGreen[500],
                      ),
                    ),
                  ],
                ),
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
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text(
                          'Canteens Right on You',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
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
