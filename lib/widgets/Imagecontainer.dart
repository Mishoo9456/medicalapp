import 'package:flutter/material.dart';
class ImageContainer extends StatelessWidget {
  final String image;

  const ImageContainer({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius:
          BorderRadius.circular(10),
       // color: Colors.red,
        //border: Border.all(width: 2,color: Colors.grey.shade300)
      ),
     // color: Colors.red,
      child: Image.asset(image,fit: BoxFit.fitHeight,),
    );
  }
}