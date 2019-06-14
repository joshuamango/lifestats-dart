import 'package:flutter/material.dart';

class Hours extends StatelessWidget {

  int differenceInHours() {
    var today = DateTime.now();
    var birthday = DateTime(1999, 05, 28);
    var difference = today.difference(birthday);
    return difference.inHours;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hours"), backgroundColor: Colors.blueGrey),
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                differenceInHours().toString(),
                style: TextStyle(fontSize: 100, color: Colors.white),
              ),
              Text("Hours", style: TextStyle(fontSize: 75, color: Colors.white),)
            ],
          ),
        ),
      ),
    ); 
  }
}