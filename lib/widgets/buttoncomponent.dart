import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.height,
      this.width,
      this.color,
      this.border,
      this.borderRadius,
      this.child,
      this.edgeInsets,
      required this.onTap,
      this.shape});

  final double? height;
  final double? width;
  final Color? color;
  final Border? border;
  final BorderRadius? borderRadius;
  final Widget? child;
  final EdgeInsets? edgeInsets;
  final VoidCallback onTap;
  final BoxShape? shape;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: edgeInsets,
        decoration: BoxDecoration(
            border: border,
            borderRadius: borderRadius,
            color: color,
            shape: shape ?? BoxShape.rectangle),
        child: Center(child: child),
      ),
    );
  }
}
