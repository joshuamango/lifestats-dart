import 'package:flutter/material.dart';

class Days extends StatelessWidget {

  int differenceInDays() {
    var today = DateTime.now();
    var birthday = DateTime(1999, 05, 28);
    var difference = today.difference(birthday);
    return difference.inDays;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Days"),),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                differenceInDays().toString(),
                style: TextStyle(fontSize: 100, color: Colors.white),
              ),
              Text("Days", style: TextStyle(fontSize: 75, color: Colors.white),)
            ],
          ),
        ),
      ),
    ); 
  }
}