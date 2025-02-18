import 'package:flutter/material.dart';

import 'package:medicalapp/widgets/sized_box_extension.dart';

import 'CustomText.dart';
import 'Imagecontainer.dart';

class PharmacyMaterial extends StatefulWidget {
  const PharmacyMaterial({super.key});

  @override
  State<PharmacyMaterial> createState() => _PharmacyMaterialState();
}

class _PharmacyMaterialState extends State<PharmacyMaterial> {
  @override
  Widget build(BuildContext context) {
    print('build');
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Container(
            width: 110,
            height: 170,
            decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.4))),
            child: Column(
              children: [
                ImageContainer(
                  image: 'assets/img_5.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: CustomText(
                    text: 'Panadol',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: CustomText(
                    text: '20 pcs',
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: '15.99',
                    ),
                    Container(
                        height: 25,
                        width: 25,
                        color: Colors.blue,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
          20.spaceH,
          Container(
            width: 110,
            height: 170,
            decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.4))),
            child: Column(
              children: [
                ImageContainer(
                  image: 'assets/img_5.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: CustomText(
                    text: 'Panadol',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: CustomText(
                    text: '20 pcs',
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: '15.99',
                    ),
                    Container(
                        height: 25,
                        width: 25,
                        color: Colors.blue,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
          20.spaceH,
          Container(
            width: 110,
            height: 170,
            decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.4))),
            child: Column(
              children: [
                ImageContainer(
                  image: 'assets/img_5.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: CustomText(
                    text: 'Panadol',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: CustomText(
                    text: '20 pcs',
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: '15.99',
                    ),
                    Container(
                        height: 25,
                        width: 25,
                        color: Colors.blue,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
          20.spaceH,
          Container(
            width: 110,
            height: 170,
            decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.4))),
            child: Column(
              children: [
                ImageContainer(
                  image: 'assets/img_5.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: CustomText(
                    text: 'Panadol',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: CustomText(
                    text: '20 pcs',
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: '15.99',
                    ),
                    Container(
                        height: 25,
                        width: 25,
                        color: Colors.blue,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
          20.spaceH,
          Container(
            width: 110,
            height: 170,
            decoration: BoxDecoration(
                //color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.4))),
            child: Column(
              children: [
                ImageContainer(
                  image: 'assets/img_5.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: CustomText(
                    text: 'Panadol',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: CustomText(
                    text: '20 pcs',
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomText(
                      text: '15.99',
                    ),
                    Container(
                        height: 25,
                        width: 25,
                        color: Colors.blue,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
