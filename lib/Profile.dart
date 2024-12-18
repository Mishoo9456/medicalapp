import 'package:flutter/material.dart';
import 'package:medicalapp/widgets/CustomText.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/file8.jpg',
              height: 60,
              width: 60,
            ),
            CustomText(
              text: 'Ruchita',
              fontSize: 10,
            ),
            Container(
              height: 100,
              width: 300,
              child: Image.asset('assets/file9.png'),
            ),
          ],
        ),
      ),
    );
  }
}
