import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ContentPage1 extends StatelessWidget {
  const ContentPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Content 1");
  }
}
