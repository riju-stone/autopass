import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabIndicator extends StatefulWidget {
  TabIndicator({
    super.key,
    required this.selectedIndex,
    required this.containerWidth,
    required this.backgroundColor,
    required this.selectedTabColor,
    required this.unselectedTabColor,
  });

  late int selectedIndex;
  final Color backgroundColor;
  final Color selectedTabColor;
  final Color unselectedTabColor;
  final double containerWidth;

  @override
  State<TabIndicator> createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: widget.containerWidth,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
      ),
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            height: 3,
            width: widget.containerWidth * 0.10,
            left: widget.containerWidth * (widget.selectedIndex + 1) * 0.25 -
                (widget.containerWidth * 0.176),
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 200),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
