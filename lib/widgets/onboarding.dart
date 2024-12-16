import 'package:flutter/material.dart';
import 'package:medicalapp/Screen2.dart';
import 'package:medicalapp/Screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final pages = [const Screen3(), const Screen2()];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 16),
              SizedBox(
                height: deviceHeight,
                child: PageView.builder(
                  controller: controller,
                  itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: deviceHeight-100,left: 50),
                child: Container(
                  child: SmoothPageIndicator(
                      controller: controller,
                      count: pages.length,
                      effect: const WormEffect()
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

const colors = [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];