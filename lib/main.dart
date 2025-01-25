import 'package:flutter/material.dart';
import 'package:medicalapp/Screen1.dart';
import 'package:medicalapp/signin.dart';

import 'DoctorDetail.dart';
import 'TopDoctor.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const TopDoctors(),
    );
  }
}
