import 'package:flutter/material.dart';
import 'package:medicalapp/Provider/ChangeThemeProvider.dart';
import 'package:medicalapp/Screen1.dart';
import 'package:medicalapp/pharmacy.dart';
import 'package:medicalapp/signin.dart';
import 'package:medicalapp/widgets/Intesrest.dart';
import 'package:medicalapp/widgets/PharmacyMaterial.dart';
import 'package:medicalapp/widgets/ThemeScreen.dart';
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
      ChangeNotifierProvider(create: (_) =>FirstExample()),
      ChangeNotifierProvider(create: (_) =>ThemeChanger())

    ],
        child: Builder(builder: (BuildContext context){
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
                brightness: Brightness.light,
             primaryColor: Colors.blue,
              primarySwatch: Colors.blue,
              useMaterial3: true,
              appBarTheme: AppBarTheme(
                backgroundColor: Colors.blue
              )
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
                appBarTheme: AppBarTheme(
                    backgroundColor: Colors.blue
                )
            ),

            home:   ThemeScreen(),
          );
        })



    );

  }
}
