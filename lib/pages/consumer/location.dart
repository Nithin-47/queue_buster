import 'package:flutter/material.dart';
import 'package:queue_buster/Pages/loading.dart';

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
                            fontSize: 17,
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



              ],
            ),
          );
  }


