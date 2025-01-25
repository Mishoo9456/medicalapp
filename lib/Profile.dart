import 'package:flutter/material.dart';
import 'package:medicalapp/widgets/CustomText.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Image.asset(
                'assets/file8.jpg',
                height: 90,
                width: 90,
              ),
              const SizedBox(
                height: 7,
              ),
              const CustomText(
                text: 'Ruchita',
                fontSize: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                // color: Colors.red,
                height: 90,
                width: 300,
                child: Image.asset('assets/file9.png'),
              ),
              Container(
                height: 60,
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //color: Colors.blue,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue.withOpacity(0.2)),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 80, top: 15),
                      child: CustomText(
                        text: 'My Saved',
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
                      iconSize: 20,
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.4),
                endIndent: 35,
                indent: 35,
              ),
              Container(
                height: 60,
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //color: Colors.blue,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue.withOpacity(0.2)),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 50, top: 15),
                      child: CustomText(
                        text: 'Appointment',
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
                      iconSize: 20,
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.4),
                endIndent: 35,
                indent: 35,
              ),
              Container(
                height: 60,
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //color: Colors.blue,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue.withOpacity(0.2)),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20, top: 15),
                      child: CustomText(
                        text: 'Payment method',
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
                      iconSize: 20,
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.4),
                endIndent: 35,
                indent: 35,
              ),
              Container(
                height: 60,
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //color: Colors.blue,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue.withOpacity(0.2)),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 110, top: 15),
                      child: CustomText(
                        text: 'FAQs',
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
                      iconSize: 20,
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.4),
                endIndent: 35,
                indent: 35,
              ),
              Container(
                height: 60,
                width: 330,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //color: Colors.blue,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue.withOpacity(0.2)),
                      child: const Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.blue,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 83, top: 15),
                      child: CustomText(
                        text: 'Logout',
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
                      iconSize: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
