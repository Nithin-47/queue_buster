import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 450,
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    'Input Name of the Store Here',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  CircleAvatar(
                    // backgroundImage: ,
                    radius: 30,
                  )
                ]
              ),
            ),

          ],
    ));
  }
}
