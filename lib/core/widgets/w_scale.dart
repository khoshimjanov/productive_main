import 'package:flutter/material.dart';

class WScale extends StatefulWidget {
  final Widget child;
  final Function() onTap;
  final bool isDisabled;
  const WScale({
    required this.child,
    required this.onTap,
    this.isDisabled = false,
    super.key,
  });

  @override
  State<WScale> createState() => _WScaleState();
}

class _WScaleState extends State<WScale> with SingleTickerProviderStateMixin {
  late Animation<double> scaleAnimation;
  late AnimationController scaleAnimationController;

  @override
  void initState() {
    scaleAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    scaleAnimation =
        Tween<double>(begin: 1, end: 0.95).animate(scaleAnimationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!widget.isDisabled) {
          widget.onTap();
        }
      },
      onPanDown: (_) {
        if (!widget.isDisabled) {
          scaleAnimationController.forward();
          setState(() {});
        }
      },
      onPanCancel: () {
        if (!widget.isDisabled) {
          scaleAnimationController.reverse();
          setState(() {});
        }
      },
      onPanEnd: (_) {
        if (!widget.isDisabled) {
          scaleAnimationController.reverse();
          setState(() {});
        }
      },
      child: ScaleTransition(
        scale: scaleAnimation,
        child: widget.child,
      ),
    );
  }
}