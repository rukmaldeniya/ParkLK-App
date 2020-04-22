import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text('Parking Management System'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Parking(),
      ),
    ),
  );
}

class Parking extends StatefulWidget {
  @override
  _ParkingState createState() => _ParkingState();
}

class _ParkingState extends State<Parking> {
  slots(int slot) {
    return Expanded(
      flex: 2,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/$slot.png'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/parklk.png'),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Five Slots are available for parking right now.',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              slots(0),
              slots(0),
              slots(1),
              slots(0),
            ],
          ),
          Row(
            children: [
              slots(1),
              slots(1),
              slots(1),
              slots(1),
            ],
          ),
        ],
      ),
    );
  }
}
