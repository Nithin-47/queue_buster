import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/route_names.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ElevatedButton(
            onPressed: () {
              context.go(RouteNames.consumerLocation.path);
            },
            child: const Text('Go to Home Page')));
  }
}
