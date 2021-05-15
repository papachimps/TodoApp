import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.yellow,
            physics: BouncingScrollPhysics(),
            indicatorPadding: EdgeInsets.symmetric(horizontal: 12),
            tabs: [
              Tab(icon: Icon(Icons.ac_unit_rounded)),
              Tab(icon: Icon(Icons.ad_units)),
              Tab(icon: Icon(Icons.backpack_outlined)),
            ],
          ),
          body: TabBarView(
            children: [
              Container(color: Colors.blue),
              Container(color: Colors.red),
              Container(color: Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
