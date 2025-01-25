import 'package:flutter/material.dart';
class AboutFunctionality extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onPressed;

  const AboutFunctionality({
    Key? key,
    required this.isExpanded,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.circular(10),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.5),
      //       spreadRadius: 2,
      //       blurRadius: 4,
      //     ),
      //   ],
      // ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.',
            style:TextStyle(color: Colors.black38),
            maxLines: isExpanded ? null : 3,
            overflow: isExpanded ? null : TextOverflow.ellipsis,
          ),
         // const SizedBox(height: 6),
          TextButton(
            onPressed: onPressed,
            child: Text(isExpanded ? 'Read Less' : 'Read More'),
          ),
        ],
      ),
    );
  }
}