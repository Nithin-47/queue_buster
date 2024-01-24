import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/loading.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) => isLoading
      ? const Loading()
      :SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 45),
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
                const Padding(
                  padding: EdgeInsets.only(left: 18.0,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                          Icons.location_city,
                          color: Colors.amber,
                      ),

                      SizedBox(width: 10),
                      Text(
                          'Use Current Location',
                          style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold
                          ),

                      )

                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(28.0),
                  child: Divider(
                    height: 2,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Text(
                      'Recent Addresses',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,

                      ),
                    ),

                  ],
                ),
                Container(
                  // bottomVPa (23:173)
                  padding: const EdgeInsets.only(top: 14),
                  width: double.infinity,
                  height: 68,
                  // decoration:  BoxDecoration (
                  //   image:  DecorationImage (
                  //     fit:  BoxFit.cover,
                  //     image:  NetworkImage (
                  //         [Image url]
                  //     ),
                  //   ),
                  // ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        // vector8Be (18:12)
                        // flex: 1,
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.home,
                                color: Colors.black,
                                size: 30,
                              ),
                              label: const Text(''))),
                      Expanded(
                        // vectorzUk (18:20)
                        //   flex: 1,

                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shop,
                                color: Colors.black,
                                size: 30,
                              ),
                              label: const Text(''))),
                      Expanded(


                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 30,
                              ),
                              label: const Text(''))),
                      Expanded(
                        // vectorCse (18:16)
                        //   flex: 1,

                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_shopping_cart,
                                color: Colors.black,
                                size: 30,
                              ),
                              label: const Text(''))),
                      Expanded(
                        // vector3dN (18:14)
                        //   flex: 1,

                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings,
                                color: Colors.black,
                                size: 30,
                              ),
                              label: const Text(''))),
                    ],
                  ),
                ),


              ],
            ),
          );
  }


