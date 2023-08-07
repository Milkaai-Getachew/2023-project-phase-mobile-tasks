import 'package:flutter/material.dart';

void main() => runApp(CounterApplication());

class CounterApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter Application',
      home: CounterScreenState(),
    );
  }
}

class CounterScreenState extends StatefulWidget {
  @override
  CounterScreen createState() => CounterScreen();
}

class CounterScreen extends State<CounterScreenState> {
  int _count = 0;

  void _incrementcount() {
    setState(() {
      _count = (_count + 1) % 11;
    });
  }

  void _decrementCount() {
    setState(() {
      _count = (_count - 1) % 11;
      if (_count < 0) {
        _count += 11; 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter Screen'),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: _incrementcount,
            ),
            Text("${_count}"),
            FloatingActionButton(
              child: Icon(Icons.remove),
              onPressed: _decrementCount,
            )
          ],
        )));
  }
}
