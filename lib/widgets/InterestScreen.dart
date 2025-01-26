import 'package:flutter/material.dart';
import 'package:medicalapp/widgets/sized_box_extension.dart';

import '../model/test_model.dart';
class IntrestScreen extends StatefulWidget {
  const IntrestScreen({super.key});

  @override
  State<IntrestScreen> createState() => _IntrestScreenState();
}

class _IntrestScreenState extends State<IntrestScreen> {
  final Set<int> selectedInterests = {};
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: interestModelList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 7,
        crossAxisSpacing: 7,
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
    );
  }
}
