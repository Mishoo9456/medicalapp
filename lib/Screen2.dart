import 'package:flutter/material.dart';
import 'package:medicalapp/signin.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 250),
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
            SizedBox(height: 30,),
            Center(
              child: Container(
                height: 350,
                width: 250,
                child: Image.asset(
                  'assets/img3.webp',
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
                        .push(MaterialPageRoute(builder: (context) => SignIn())); },
                    icon: Icon(Icons.arrow_forward,color: Colors.white,size: 35,)),

              ),
            )
          ],
        ),
      ),
    );
  }
}
