import 'package:flutter/material.dart';
import 'package:medicalapp/homepage.dart';
import 'package:medicalapp/widgets/CustomContainer.dart';
import 'package:medicalapp/widgets/ListItemWidget.dart';

import 'DoctorDetail.dart';

class TopDoctors extends StatelessWidget {
  const TopDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Item> items = [
      Item(
          title: 'Dr.Rishi',
          subtitle: 'Chardiolist',
          image: 'assets/img_2.png',
          rating: '4.7',
          time: '800m away',
          onpressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => const InterestScreen()));
          }),
      Item(
        title: 'Dr.Wanaama',
        subtitle: 'Dentist',
        image: 'assets/img_3.png',
        rating: '4.8',
        time: '800m away',
        onpressed: () {},
      ),
      Item(
        title: 'Dr.Nallarasi',
        subtitle: 'Orthopeadic',
        image: 'assets/img_3.png',
        rating: '4.2',
        time: '800m away',
        onpressed: () {},
      ),
      Item(
        title: 'Dr.Nihal',
        subtitle: 'Chardiologist',
        image: 'assets/img_3.png',
        rating: '4.2',
        time: '800m away',
        onpressed: () {},
      ),
      Item(
        title: 'Dr.Rashita',
        subtitle: 'Orthopeadic',
        image: 'assets/img_3.png',
        rating: '4.2',
        time: '800m away',
        onpressed: () {},
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Homepage()));
            }, icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Top Doctors',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomContainer(item: items[index]);
        },
      ),
    );
  }
}
