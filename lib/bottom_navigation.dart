import 'package:autopass/constants.dart';
import 'package:autopass/custom/lottie_icons.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 80,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(1),
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
          child:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            LottieIcon(
              iconName: "home",
              height: 35,
              width: 55,
            ),
            LottieIcon(
              iconName: "vault",
              height: 38,
              width: 55,
            ),
            LottieIcon(
              iconName: "user",
              height: 35,
              width: 55,
            ),
            LottieIcon(
              iconName: "settings",
              height: 30,
              width: 55,
            )
          ]),
        ),
      ),
    );
  }
}
