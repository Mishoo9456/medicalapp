import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String? text;
  final double? fontSize, lineHeight; // Added lineHeight
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final Color? color;
  final TextDirection? textDirection;
  final TextDecoration? textDecoration;


  const CustomText({
    super.key,
    this.text,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.color,
    this.maxLines,
    this.textDirection,
    this.lineHeight, // Added lineHeight

    this.textDecoration,
  });

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {


  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text!,

      style: TextStyle(
        fontSize: widget.fontSize,
        fontWeight: widget.fontWeight,

        color: widget.color,
        height: widget.lineHeight,
        // Line height property added
        decoration: widget.textDecoration, // Fixed undefined name
      ),
      textAlign: widget.textAlign,
      textDirection: widget.textDirection,
      maxLines: widget.maxLines,

    );
  }
}