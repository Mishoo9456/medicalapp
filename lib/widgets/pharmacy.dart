import 'package:flutter/material.dart';

import '../homepage.dart';
import 'Textfoemfield.dart';
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
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Homepage()));
            }, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Pharmacy',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: SingleChildScrollView(
              child: CustomTextField(
                  hintText: 'Search doctors, drugs and articles... ',
                  prefixIcon: Icons.search,
                  
                  borderRadius: 100),
            ),
          ),
        ],
      ),
    );
  }
}
