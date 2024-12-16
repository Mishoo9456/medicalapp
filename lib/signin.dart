import 'package:flutter/material.dart';
import 'package:medicalapp/signup.dart';
import 'package:medicalapp/widgets/BottomNavigationBar.dart';
import 'package:medicalapp/widgets/CustomText.dart';
import 'package:medicalapp/widgets/Textfoemfield.dart';
import 'package:medicalapp/widgets/buttoncomponent.dart';

import 'package:medicalapp/homepage.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                isPassword: true,
                borderRadius: 40,
                prefixIcon: Icons.lock_outline,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 170),
              child: CustomText(
                text: 'Forgot password?',
                fontSize: 20,
                color: Color(0xff407CE2),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CustomButton(
                color: const Color(0xff407CE2),
                height: 60,
                width: 350,
                borderRadius: BorderRadius.circular(30),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {

                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Bottom()));
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Row(
                children: [
                  const CustomText(
                    text: 'Don`t have an account',
                    fontSize: 15,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignUp()));
                      },
                      child: const Text(
                        'SignUp',
                        style: TextStyle(
                            color: Color(0xff407CE2),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
           const SizedBox(
             height: 30,
           ),
           const Stack(
            children: [
              Divider(
                color: Colors.black38,
                indent: 230,
                endIndent: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 200),
                child: Text('OR'),
              ),
              Divider(
                color: Colors.black38,
                indent: 40,
                endIndent: 230,
              ),
            ],
           ),
        
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CustomButton(
                  border: Border.all(color: Colors.black38),
                  height: 60,
                  width: 350,
                  borderRadius: BorderRadius.circular(10),
                  child: const Text(
                    'Sign In with GOOGLE',
                    style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
        
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CustomButton(
                  border: Border.all(color: Colors.black38),
                  height: 60,
                  width: 350,
                  borderRadius: BorderRadius.circular(10),
                  child: const Text(
                    'Sign In with facebook',
                    style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
        
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
