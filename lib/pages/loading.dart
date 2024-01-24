import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';








class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const Center(
        child: SpinKitSpinningLines(
                size: 140,
                color: Colors.black,
        ),
      ),



    );
  }
}