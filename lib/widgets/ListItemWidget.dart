import 'package:flutter/material.dart';

class Item {
  final String title;
  final String subtitle;
  final String image;
  final String rating;
  final String time;
 final onpressed;
  Item({required this.onpressed,required this.title, required this.subtitle, required this.image, required this.rating, required this.time});
}