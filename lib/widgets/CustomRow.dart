import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const DetailsRow({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.lightBlue,
      child: Row(
        children: [
          Icon(icon, color: Colors.black38),
          const SizedBox(width: 8),
          Text(text, style: TextStyle(color: Colors.black38)),
        ],
      ),
    );
  }
}