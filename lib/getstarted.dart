import 'package:flutter/material.dart';
import 'package:medicalapp/signin.dart';
import 'package:medicalapp/signup.dart';
import 'package:medicalapp/widgets/buttoncomponent.dart';
import 'widgets/CustomText.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 70),
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  'assets/img.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 70),
              child: CustomText(
                text: 'HealthCare',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff407CE2),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 70),
              child: CustomText(
                text: 'Lets get Started!',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60),
              child: CustomText(
                text: 'Login to stay healthy and fit',
                color: Colors.black38,
                fontSize: 23,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: CustomButton(
                color: Color(0xff407CE2),
                height: 50,
                width: 300,
                borderRadius: BorderRadius.circular(30),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>  SignIn()));
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: CustomButton(
                  border: Border.all(color: Color(0xff407CE2)),
                  height: 50,
                  width: 300,
                  borderRadius: BorderRadius.circular(30),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Color(0xff407CE2), fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUp()));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
