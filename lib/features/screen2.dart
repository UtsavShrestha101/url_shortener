import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
   return const Scaffold(
      body: Center(
        child: Text("Screen 2"),
      ),
    );
  }
}