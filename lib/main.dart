import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //we use the DefaultTabController from Flutter
      home: DefaultTabController(
        //tabbar length that we used
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              //we need to initialization the tabbar too
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.whatshot)),
                Tab(icon: Icon(Icons.transfer_within_a_station)),
                Tab(icon: Icon(Icons.accessibility_new)),
              ],
            ),
            title: Text('My TabBar'),
          ),
          // and then we got the body to call with tabbarview widgets
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.whatshot),
              Icon(Icons.transfer_within_a_station),
              Icon(Icons.accessibility_new),
            ],
          ),
        ),
      ),
    );
  }
}
