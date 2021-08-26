import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterTab Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyTabBar(),
    );
  }
}

class MyTabBar extends StatelessWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Tab Bar"),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.car_rental),
            ),
            Tab(
              icon: Icon(Icons.access_alarms),
            )
          ]),
        ),
        body: TabBarView(children: <Widget>[
          Icon(Icons.home),
          Icon(Icons.car_rental),
          Icon(Icons.access_alarms)
        ]),
      ),
    );
  }
}
