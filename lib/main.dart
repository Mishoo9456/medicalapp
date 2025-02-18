import 'package:flutter/material.dart';
import 'package:medicalapp/Screen1.dart';
import 'package:medicalapp/pharmacy.dart';
import 'package:medicalapp/signin.dart';
import 'package:medicalapp/widgets/Intesrest.dart';
import 'package:medicalapp/widgets/PharmacyMaterial.dart';
import 'package:provider/provider.dart';

import 'DoctorDetail.dart';
import 'Provider/FirstExampleProvider.dart';
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
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) =>FirstExample() )

    ],
        child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:   Homepage(),
    )
    );

  }
}
