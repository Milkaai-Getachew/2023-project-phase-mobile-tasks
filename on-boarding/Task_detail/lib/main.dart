import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add Task',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white, secondary: Color.fromARGB(235, 222, 106, 11)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Add Task'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Detail'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          
          Image.asset('images/taskDetail.png',height: 300,),

          
          Container(
            height: 5,
          ),

          Container(
            margin: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Title',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(235, 2, 2, 2),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            height: 8,
          ),

          const Card(
            surfaceTintColor: Colors.white,
            color: Colors.white,
            elevation: 4,
            shadowColor: Color.fromRGBO(149, 157, 165, 0.2),
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                children: <Widget>[
                  // Use SizedBox instead of Container for spacing
                  Expanded(
                    // Use Expanded to take remaining space in the row
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'UI/UX App Design',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Add some spacing to the right of the last widget
                ],
              ),
            ),
          ),
          Container(
            height: 10,
          ),

          Container(
            margin: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Description',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(235, 13, 13, 13),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


          const Card(
            surfaceTintColor: Colors.white,
            color: Colors.white,
            elevation: 4,
            shadowColor: Color.fromRGBO(149, 157, 165, 0.2),
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                children: <Widget>[
                  // Use SizedBox instead of Container for spacing
                  Expanded(
                    // Use Expanded to take remaining space in the row
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'First I have to animate the logo and later prototyping my design. is is very important to make the design user friendly.',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Deadline',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(235, 10, 10, 10),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            height: 8,
          ),

          const Card(
            surfaceTintColor: Colors.white,
            color: Colors.white,
            elevation: 4,
            shadowColor: Color.fromRGBO(149, 157, 165, 0.2),
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'April, 20 2023 12:30 PM',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 10,
          ),


          Container(
            height: 8,
          ),

          
          Container(
            height: 30,
          ),
      
        ],
      ),
    );
  }
}