import 'package:flutter/material.dart';

class Custom_Container extends StatelessWidget {
  const Custom_Container(
      { this.height,
       this.width,
      this.child,
      this.color,
        this.padding,
        this.margin,
        this.alignment,
        this.maxLines,
        this.border,
      super.key});

  final double? height;
  final int? maxLines;
  final double? width;
  final child;
  final Color ?color;
  final padding;
  final margin;
  final alignment;
  final border;
  @override
  Widget build(BuildContext context) {
    return Custom_Container(
      height: height,
        width: width,
        child: child,
        color: color,
    padding: padding,
    margin: margin,
    border: border,
    alignment: alignment,);
  }
}
