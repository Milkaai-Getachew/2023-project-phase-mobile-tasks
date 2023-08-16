import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';
import 'FourthPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define named routes
      routes: {
        '/': (context) => const HomePage(), // Initial route (homepage)
        '/secondPage': (context) => const SecondPage(),
        '/thirdPage': (context) => const ThirdPage(),
        '/fourthPage': (context) => const FourthPage(),
      },
      initialRoute: '/', // Set the initial route
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(235, 222, 106, 11),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset('images/getstarted.jpg',
              // height: 400,),
              // const SizedBox(height: 40,),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/secondPage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 26, 43, 234),
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
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
