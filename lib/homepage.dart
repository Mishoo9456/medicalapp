import 'package:flutter/material.dart';
import 'package:medicalapp/widgets/BottomNavigationBar.dart';
import 'package:medicalapp/widgets/CustomText.dart';
import 'package:medicalapp/widgets/Textfoemfield.dart';
import 'package:medicalapp/widgets/article.dart';
import 'package:medicalapp/widgets/container.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 400,
            width: 420,
            color: Color(0xff87CEEB),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 120),
                  child: Column(
                    children: [
                      Text(
                        'welcome!\n Ruchita',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '     How is it going today?',
                        style: TextStyle(color: Colors.black38, fontSize: 20),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 00),
                  child: Center(
                    child: Container(
                      height: 250,
                      width: 170,
                      // color: Colors.red,
                      color: Color(0xff87CEEB),
                      child: Image.asset(
                        'assets/file3.png',
                        // height: 100,
                        // width: 10,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 270),
            child: Container(
              height: 400,
              width: 430,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  color: Colors.white),
              child: SingleChildScrollView(
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                    child: SingleChildScrollView(
                      child: CustomTextField(
                          hintText: 'Search doctors, drugs and articles... ',
                          prefixIcon: Icons.search,
                          borderRadius: 100),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff407CE2),
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.medical_services_outlined),
                              color: Colors.white,
                              iconSize: 35,
                            ),
                          ),
                          CustomText(
                            text: 'Top Doctors',
                            color: Colors.black,
                            fontSize: 18,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff407CE2),
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.medical_services_outlined),
                              color: Colors.white,
                              iconSize: 35,
                            ),
                          ),
                          CustomText(
                            text: 'Pharmacy',
                            color: Colors.black,
                            fontSize: 18,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xff407CE2),
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.car_rental_rounded),
                              color: Colors.white,
                              iconSize: 35,
                            ),
                          ),
                          CustomText(
                            text: 'Embulance',
                            color: Colors.black,
                            fontSize: 18,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomText(
                            text: 'Health article',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: 'See all',
                            color: Color(0xff407CE2),
                            fontSize: 15,
                          )
                        ],
                      ),
                      Container(
                        //color: Colors.red,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            article(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black38),
                              // width: 50,
                              height: 70,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color(0xffD3D3D3))),
                                    height: 60,
                                    width: 60,
                                    child: Image.asset('assets/file.png'),
                                  ),
                                  Text(
                                      'The 25 healthiest fruit you can \n eat , According to a nutritionist'),
                                  Icon(
                                    Icons.bookmark,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            article(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black38),
                              // width: 50,
                              height: 70,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color(0xffD3D3D3))),
                                    height: 60,
                                    width: 60,
                                    child: Image.asset('assets/file.png'),
                                  ),
                                  Text(
                                      'The 25 healthiest fruit you can \n eat , According to a nutritionist'),
                                  Icon(
                                    Icons.bookmark,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            article(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black38),
                              // width: 50,
                              height: 70,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color(0xffD3D3D3))),
                                    height: 60,
                                    width: 60,
                                    child: Image.asset('assets/file.png'),
                                  ),
                                  Text(
                                      'The 25 healthiest fruit you can \n eat , According to a nutritionist'),
                                  Icon(
                                    Icons.bookmark,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            article(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black38),
                              // width: 50,
                              height: 70,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color(0xffD3D3D3))),
                                    height: 60,
                                    width: 60,
                                    child: Image.asset('assets/file.png'),
                                  ),
                                  Text(
                                      'The 25 healthiest fruit you can \n eat , According to a nutritionist'),
                                  Icon(
                                    Icons.bookmark,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
