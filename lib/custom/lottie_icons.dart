import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieIcon extends StatefulWidget {
  const LottieIcon(
      {super.key,
      required this.iconName,
      required this.height,
      required this.width,
      required this.onTap});

  final String iconName;
  final double height;
  final double width;
  final Function onTap;

  @override
  State<LottieIcon> createState() => _LottieIconState();
}

class _LottieIconState extends State<LottieIcon> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
        _controller.reset();
        _controller.forward();
      },
      child: Lottie.asset(
        'assets/icons/animated/${widget.iconName}.json',
        height: widget.height,
        width: widget.width,
        controller: _controller,
        onLoaded: (composition) {
          _controller.duration = composition.duration;
        },
        delegates: LottieDelegates(
          values: [
            ValueDelegate.color(
              const ['Outlines', '**', "Stroke 1"],
              value: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
