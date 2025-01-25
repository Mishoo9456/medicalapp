import 'package:flutter/material.dart';

import 'CustomColumn.dart';
import 'Imagecontainer.dart';
import 'ListItemWidget.dart';

class CustomContainer extends StatelessWidget {
  final Item item;

  const CustomContainer({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ImageContainer(image: item.image),
          const SizedBox(width: 16),
          Expanded(child: DetailsColumn(item: item)),
        ],
      ),
    );
  }
}
