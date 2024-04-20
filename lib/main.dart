import 'package:flutter/material.dart';
import 'package:autopass/bottom_navigation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AutoPassApp()));
}

class AutoPassApp extends StatelessWidget {
  const AutoPassApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AutoPass',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.white),
        home: const BottomNavigation());
  }
}
