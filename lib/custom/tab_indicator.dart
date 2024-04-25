import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabIndicator extends StatefulWidget {
  TabIndicator({
    super.key,
    required this.selectedIndex,
    required this.backgroundColor,
    required this.selectedTabColor,
    required this.unselectedTabColor,
  });

  late int selectedIndex;
  final Color backgroundColor;
  final Color selectedTabColor;
  final Color unselectedTabColor;

  @override
  State<TabIndicator> createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < 4; i++)
            AnimatedContainer(
              height: 4,
              width: i == widget.selectedIndex ? 25 : 0,
              duration: const Duration(milliseconds: 1500),
              curve: Curves.fastLinearToSlowEaseIn,
              decoration: BoxDecoration(
                color: i == widget.selectedIndex
                    ? widget.selectedTabColor
                    : widget.unselectedTabColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
            )
        ],
      ),
    );
  }
}
