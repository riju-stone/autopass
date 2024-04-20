import 'package:autopass/constants.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: paleBlueColor,
      body: Center(
        child: Text("User"),
      ),
    );
  }
}
