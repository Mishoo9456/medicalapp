import 'package:flutter/material.dart';
import 'package:medicalapp/TopDoctor.dart';
import 'package:medicalapp/model/test_model.dart';
import 'package:medicalapp/widgets/AboutFunctionality.dart';
import 'package:medicalapp/widgets/CustomText.dart';
import 'package:medicalapp/widgets/Dr.Rishi.dart';
import 'package:medicalapp/widgets/buttoncomponent.dart';
import 'package:medicalapp/widgets/sized_box_extension.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  bool _isExpanded = false;
  // Move the selectedInterests set here to retain its state
  final Set<int> selectedInterests = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const TopDoctors()));
            },
            icon: const Icon(Icons.arrow_back_ios)),
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

                //5.spaceV,
                AboutFunctionality(
                  isExpanded: _isExpanded,
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                ),

                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: interestModelList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 13,
                    crossAxisSpacing: 13,
                    childAspectRatio: 3,
                  ),
                  itemBuilder: (context, index) {
                    final interest = interestModelList[index];
                    final isSelected = selectedInterests.contains(index);

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedInterests.remove(index);
                          } else {
                            selectedInterests.add(index);
                          }
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.blue : Colors.transparent,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            30.spaceH,
                            10.spaceH,
                            Center(
                              child: Text(
                                interest.title,
                                style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                15.spaceV,
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
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {


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
