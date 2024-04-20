import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:autopass/constants.dart';

import 'package:autopass/custom/lottie_icons.dart';
import 'package:autopass/custom/tab_indicator.dart';

import 'package:autopass/screens/home_screen.dart';
import 'package:autopass/screens/settings_screen.dart';
import 'package:autopass/screens/user_screen.dart';
import 'package:autopass/screens/vault_screen.dart';

final _navIndexProvider = StateProvider((ref) => 0);

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  final List<Widget> screens = const [
    HomeScreen(),
    VaultScreen(),
    UserScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Consumer(
        builder: (context, ref, child) {
          final currentIndex = ref.watch(_navIndexProvider);
          return IndexedStack(
            index: currentIndex,
            children: screens,
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SafeArea(
        child: Container(
          height: 80,
          margin: EdgeInsets.only(
              left: 25, right: 25, bottom: Platform.isAndroid == true ? 20 : 5),
          child: Consumer(
            builder: (context, ref, child) {
              final currentIndex = ref.watch(_navIndexProvider);
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomNavigationBar(
                      type: BottomNavigationBarType.fixed,
                      currentIndex: currentIndex,
                      backgroundColor: darkBlueColor,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      elevation: 0,
                      onTap: (value) {
                        ref
                            .read(_navIndexProvider.notifier)
                            .update((state) => value);
                      },
                      items: [
                        BottomNavigationBarItem(
                          label: "Home",
                          icon: LottieIcon(
                            iconName: "home",
                            height: 32,
                            width: 32,
                            onTap: () {
                              ref
                                  .read(_navIndexProvider.notifier)
                                  .update((state) => 0);
                            },
                          ),
                        ),
                        BottomNavigationBarItem(
                          label: "Vault",
                          icon: LottieIcon(
                            iconName: "vault",
                            height: 34,
                            width: 34,
                            onTap: () {
                              ref
                                  .read(_navIndexProvider.notifier)
                                  .update((state) => 1);
                            },
                          ),
                        ),
                        BottomNavigationBarItem(
                          label: "User",
                          icon: LottieIcon(
                            iconName: "user",
                            height: 32,
                            width: 32,
                            onTap: () {
                              ref
                                  .read(_navIndexProvider.notifier)
                                  .update((state) => 2);
                            },
                          ),
                        ),
                        BottomNavigationBarItem(
                          label: "Settings",
                          icon: LottieIcon(
                            iconName: "settings",
                            height: 30,
                            width: 30,
                            onTap: () {
                              ref
                                  .read(_navIndexProvider.notifier)
                                  .update((state) => 3);
                            },
                          ),
                        ),
                      ],
                    ),
                    TabIndicator(
                      selectedIndex: currentIndex,
                      backgroundColor: darkBlueColor,
                      selectedTabColor: Colors.white.withOpacity(0.6),
                      unselectedTabColor: darkBlueColor,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
