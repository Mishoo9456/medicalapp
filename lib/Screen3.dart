import 'package:flutter/material.dart';
import 'package:medicalapp/Screen2.dart';
import 'package:medicalapp/signin.dart';
class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(children:
            [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 220),
                child: Container(
                  child: TextButton(
                    onPressed: (){
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => SignIn()));
                    },

                    child: Text('Skip',
                        style: TextStyle(color: Colors.black.withOpacity(0.5))),
                  ),
                ),
              ),
            ],),
            const SizedBox(height: 30,),
            Center(
              child: Container(
                height: 350,
                width: 250,
                child: Image.asset(
                  'assets/img4.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Find a lot of specialist \ndoctors in one place',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 200),
              child: CircleAvatar(
                backgroundColor: Color(0xff407CE2),radius: 25,
                child: IconButton(

                    onPressed: () { Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Screen2())); },
                    icon: Icon(Icons.arrow_forward,color: Colors.white,size: 35,)),

              ),
            )
          ],
        ),
      ),
    );
  }
}
