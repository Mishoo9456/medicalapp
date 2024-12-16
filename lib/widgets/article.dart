import 'package:flutter/material.dart';
class article extends StatelessWidget {
  const article({super.key,
    this.height,
    this.width,
    this.color,
    this.border,
    this.borderRadius,
    this.child,
    this.edgeInsets,
    this.image,

  });
  final double? height;
  final double? width;
  final Color? color;
  final Border? border;
  final BorderRadius? borderRadius;
  final Widget? child;
  final EdgeInsets? edgeInsets;
  final image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: edgeInsets,
      child: child,
      decoration: BoxDecoration(
        border: border,
        borderRadius: borderRadius,
        color: color,
      ),
    );
  }
}
