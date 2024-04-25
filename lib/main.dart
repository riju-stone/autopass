import 'dart:io';

import 'package:autopass/constants.dart';
import 'package:flutter/material.dart';
import 'package:autopass/bottom_navigation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AutoPassApp()));
}

class AutoPassApp extends StatelessWidget {
  const AutoPassApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Draw over android gesture bar
    if (Platform.isAndroid) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.light.copyWith(
          systemNavigationBarColor: const Color(0x00000000),
        ),
      );
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AutoPass',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: darkBackgroundColor),
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.black),
        home: const BottomNavigation());
  }
}
