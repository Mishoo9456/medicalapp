import 'package:flutter/material.dart';
import 'package:medicalapp/widgets/CustomText.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 39, top: 20),
              child: Container(
                //color: Colors.red,
                height: 150,
                width: 330,
                child: Image.asset(
                  'assets/file5.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 39, top: 30),
              child: Container(
                  //color: Colors.red,
                  height: 140,
                  width: 330,
                  child: Image.asset(
                    'assets/file6.png',
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 190, top: 20),
              child: CustomText(
                color: Colors.black,
                fontSize: 18,
                text: 'Latest report',
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 39),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                height: 80,
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      //color: Colors.blue,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(0.2)),
                      child: Icon(Icons.battery_0_bar_rounded),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'General Report',
                          fontSize: 15,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        CustomText(
                          text: 'jul 10,2023',
                          fontSize: 10,
                          color: Colors.black38,
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Center(
                          child: Text(
                            '...',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 39),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                height: 80,
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      //color: Colors.blue,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(0.2)),
                      child: Icon(Icons.battery_0_bar_rounded),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'General Report',
                          fontSize: 15,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        CustomText(
                          text: 'jul 5,2023',
                          fontSize: 10,
                          color: Colors.black38,
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            '...',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
