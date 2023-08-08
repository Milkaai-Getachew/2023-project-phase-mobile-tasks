 import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(235, 222, 106, 11),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/getstarted.jpg',
              height: 400,),
              const SizedBox(height: 40,),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 26, 43, 234),
                  minimumSize: const Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Get Started',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white
                ),
                ),
                ),
              ),
            ],
          ),

        ),
      ),
      );
  }
}