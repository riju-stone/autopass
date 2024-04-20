import 'package:autopass/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      backgroundColor: primaryColor,
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}
