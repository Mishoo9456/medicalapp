import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? hintStyle;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool isPassword;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Color? borderColor;
  final double? borderRadius;
  final int? maxLength;
  final int? maxLines;



  const CustomTextField({ Key? key,
    this.hintStyle,
    this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.validator,
    this.borderColor,
    this.borderRadius = 2.0,
    this.maxLength,
    this.maxLines = 1,
  }) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      onChanged: onChanged,
      validator: validator,
      maxLength: maxLength,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black38),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
          borderSide: BorderSide(color: borderColor ?? Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: borderColor ?? Theme.of(context).primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(color: borderColor ?? Colors.grey),
        ),
      ),
    );
  }
}