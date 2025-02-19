import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/ChangeThemeProvider.dart';
class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {

    final themeChanger = Provider.of<ThemeChanger>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          title: Text('ThemeChanger'),

        ),
        body: Column(
          children: [
            RadioListTile<ThemeMode>(
              title: const Text('Light Mode'),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode, // Fixed
              onChanged: (ThemeMode? mode) {
                if (mode != null) {
                  themeChanger.setTheme(mode); // Fixed
                }
              },
            ),
      
            RadioListTile<ThemeMode>(
              title: const Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode, // Fixed
              onChanged: (ThemeMode? mode) {
                if (mode != null) {
                  themeChanger.setTheme(mode); // Fixed
                }
              },
            ),
      

          ],
        ),
      ),
    );
  }
}
