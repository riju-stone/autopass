import 'package:autopass/constants.dart';
import 'package:flutter/material.dart';

class VaultScreen extends StatelessWidget {
  const VaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Text("Vaults"),
      ),
    );
  }
}
