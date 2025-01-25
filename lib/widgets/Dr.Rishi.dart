import 'package:flutter/material.dart';
import 'package:medicalapp/widgets/CustomText.dart';

import 'Imagecontainer.dart';

class Doctors extends StatefulWidget {


  const Doctors({super.key});

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        children: [
          const ImageContainer(
            image: 'assets/img_2.png',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(
                  text: 'Dr.Rishi',
                ),
                const CustomText(
                  text: 'Chardiologist',
                  color: Colors.black38,
                ),
                Container(
                  height: 20,
                  color: Colors.blue.withOpacity(0.3),
                  child: Row(

                    children: [
                      Icon(Icons.star,size: 20,),
                      CustomText(
                        text: '4.7',
                        color: Colors.black38,
                      ),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Icon(Icons.location_on,size: 20,),
                    CustomText(
                      text: '800m away',
                      color: Colors.black38,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
