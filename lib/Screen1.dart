import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medicalapp/widgets/onboarding.dart';


class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const OnBoarding())));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/img1.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(color: Colors.blue.shade100.withOpacity(0.3)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 150),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 230,
                      width: 230,
                      child: Image.asset(
                        'assets/img.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Text(
                        'Health Care ',
                        style: TextStyle(
                            color: Color(0xff00008B),
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text('Medical App',
                          style: TextStyle(
                              color: Color(0xff00008B), fontSize: 20)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
