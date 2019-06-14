import 'package:flutter/material.dart';
import 'package:life_stats/main.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900, 1),
        lastDate: DateTime(2019, 12));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter your birthday')
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('${selectedDate.toLocal()}'), 
          SizedBox(height: 20,),
          RaisedButton(
            onPressed: () => _selectDate(context),
            child: Text('Select date')
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return StatsPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}