import 'package:flutter/material.dart';
import 'package:life_stats/start.dart';
import 'package:life_stats/days.dart';
import 'package:life_stats/hours.dart';

void main() => runApp(LifeStats());

class LifeStats extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LifeStats',
      theme: ThemeData.dark(),
      home: Start(),
    );
  }
}

class StatsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StatsPageState();
  }
}

class StatsPageState extends State<StatsPage> {
  final PageController pageController = PageController(
    initialPage: 1
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Days(),
        Hours(),
        Scaffold(appBar: AppBar(backgroundColor: Colors.orange,), body: Container(color: Colors.orange,),),
        Scaffold(appBar: AppBar(backgroundColor: Colors.red), body: Container(color: Colors.red,),),
        Scaffold(appBar: AppBar(), body: Container(),),
      ],
    );
  }
}

