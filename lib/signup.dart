import 'package:flutter/material.dart';
import 'package:medicalapp/signin.dart';
import 'package:medicalapp/widgets/CustomText.dart';
import 'package:medicalapp/widgets/Textfoemfield.dart';
import 'package:medicalapp/widgets/buttoncomponent.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Sign Up',
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 30, right: 30),
              child: CustomTextField(
                hintText: 'Enter your username',
                borderRadius: 40,
                prefixIcon: Icons.person,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 30, right: 30),
              child: CustomTextField(
                hintText: 'Enter your email',
                borderRadius: 40,
                prefixIcon: Icons.email,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 30, right: 30),
              child: CustomTextField(
                hintText: 'Enter your password',
                borderRadius: 40,
                prefixIcon: Icons.lock,
                isPassword: true,
              ),
            ),
            SizedBox(height: 15,),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10,),
                      RichText(
                        text: const TextSpan(
                            text: 'I agree to the health care ',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                            children: [
                              TextSpan(
                                  text: 'terms of \n services ',
                                  style: TextStyle(
                                      color: Color(0xff407CE2), fontSize: 15)),
                              TextSpan(text: 'and '),
                              TextSpan(text: 'Privacy Policy',style: TextStyle(
                                  color: Color(0xff407CE2), fontSize: 15))
                            ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 280,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CustomButton(
                color: const Color(0xff407CE2),
                height: 60,
                width: 350,
                borderRadius: BorderRadius.circular(30),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SignIn()));
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Row(
                children: [
                  const CustomText(
                    text: 'if you have an account',
                    fontSize: 15,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: const Text(
                        'SignIn',
                        style: TextStyle(
                            color: Color(0xff407CE2),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
