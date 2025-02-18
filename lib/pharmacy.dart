import 'package:flutter/material.dart';
import 'package:medicalapp/widgets/CustomText.dart';
import 'package:medicalapp/widgets/PharmacyMaterial.dart';
import 'package:medicalapp/widgets/buttoncomponent.dart';
import 'package:medicalapp/widgets/sized_box_extension.dart';

import 'homepage.dart';
import 'widgets/Textfoemfield.dart';

class Pharmacy extends StatefulWidget {
  const Pharmacy({super.key});

  @override
  State<Pharmacy> createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Homepage()));
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Pharmacy',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: SingleChildScrollView(
                child: CustomTextField(
                    hintText: 'Search drugs, category... ',
                    prefixIcon: Icons.search,
                    //borderColor: Colors.grey,
                    borderRadius: 130),
              ),
            ),
            20.spaceV,
            Container(
              height: 100,
              width: 270,
              decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(13)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    text: 'Order Quickly with \nPrescription',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    //textAlign: TextAlign.center,
                  ),
                  CustomButton(
                    onTap: () {},
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    height: 30,
                    width: 200,
                    child: Text(
                      'Upload Prescription',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            16.spaceV,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 150, left: 20),
                  child: CustomText(
                    text: 'popular product',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                CustomButton(
                  onTap: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            10.spaceV,
            PharmacyMaterial(),
            16.spaceV,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 150, left: 20),
                  child: CustomText(
                    text: 'Product on sale',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                CustomButton(
                  onTap: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            10.spaceV,
            PharmacyMaterial(),
          ],
        ),
      ),
    );
  }
}
