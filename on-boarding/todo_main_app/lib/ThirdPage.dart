import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
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
          const Text(
            'Create New Task',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          // horizontal line
          const Divider(
            color: Color.fromARGB(235, 222, 106, 1),
            height: 20,
            thickness: 1,
          ),
          Container(
            height: 5,
          ),

          Container(
            margin: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Main Task Name',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(235, 222, 106, 11),
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
              'Due Date',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(235, 222, 106, 11),
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
                  // Add the date selector icon here
                  Icon(
                    Icons.date_range,
                    size: 24,
                    color: Color.fromARGB(235, 222, 106, 11),
                  ),
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
                color: Color.fromARGB(235, 222, 106, 11),
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
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fourthPage');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 238, 111, 87),
                minimumSize: const Size(150, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Add Task',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
