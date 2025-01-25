import 'package:flutter/material.dart';

import '../DoctorDetail.dart';
import 'CustomRow.dart';
import 'ListItemWidget.dart';

class DetailsColumn extends StatelessWidget {
  final Item item;

  const DetailsColumn({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(onPressed: (){
       item.onpressed;
        },
            child: Text(item.title,
                style:TextStyle(fontSize:
                20))),
        Text(item.subtitle, style:TextStyle(color: Colors.black38)),
        const SizedBox(height: 8),
        Container(
            color: Colors.lightBlueAccent.shade100.withOpacity(0.3),
            // height: 0,
            width: 60,
            child: DetailsRow(icon: Icons.star, text: item.rating)),
        const SizedBox(height: 4),
        DetailsRow(icon: Icons.location_on, text: item.time),
      ],
    );
  }
}
