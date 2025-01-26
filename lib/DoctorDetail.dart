import 'package:flutter/material.dart';
import 'package:medicalapp/TopDoctor.dart';
import 'package:medicalapp/model/test_model.dart';
import 'package:medicalapp/widgets/AboutFunctionality.dart';
import 'package:medicalapp/widgets/CustomText.dart';
import 'package:medicalapp/widgets/Dr.Rishi.dart';
import 'package:medicalapp/widgets/InterestScreen.dart';
import 'package:medicalapp/widgets/Intesrest.dart';
import 'package:medicalapp/widgets/buttoncomponent.dart';
import 'package:medicalapp/widgets/sized_box_extension.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({super.key});

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  bool _isExpanded = false;
  final Set<int> selectedInterests = {};
  int selectedIndex = -1; // For tracking the selected date container.
  final List<DateTime> dates = List.generate(
    30,
    (index) => DateTime.now().add(Duration(days: index)),
  ); // Generate 30 days from today.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const TopDoctors()));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'Doctor Detail',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Doctors(),
                16.spaceV,
                const CustomText(
                  text: 'About',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),

                AboutFunctionality(
                  isExpanded: _isExpanded,
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                ),

                // Horizontal list of date containers

                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dates.length,
                    itemBuilder: (context, index) {
                      final date = dates[index];
                      final isSelected = selectedIndex == index;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          width: 60,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color:
                                isSelected ? Colors.blueAccent : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.blueAccent,
                              width: isSelected ? 2 : 1,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${date.day}",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                ),
                              ),
                              Text(
                                "${date.weekday == 7 ? "Sunday" : [
                                    "Monday",
                                    "Tuesday",
                                    "Wednesday",
                                    "Thursday",
                                    "Friday",
                                    "Saturday"
                                  ][date.weekday - 1]}",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: isSelected
                                      ? Colors.white70
                                      : Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                15.spaceV,
                IntrestScreen(),
                30.spaceV,
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CustomButton(
                    color: const Color(0xff407CE2),
                    height: 60,
                    width: 350,
                    borderRadius: BorderRadius.circular(30),
                    child: const Text(
                      'Book Appoinment',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      // Handle appointment booking
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
