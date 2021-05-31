import 'package:flutter/material.dart';

import './customAppBar.dart';
import 'models/globals.dart';
import 'screens/intray-page/intray-page.dart';

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
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          height: 240,
          bottomRadius: 80,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabBar(
                    indicatorWeight: 0.001,
                    unselectedLabelColor: Colors.black,
                    labelColor: redColor,
                    physics: BouncingScrollPhysics(),
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Tab(icon: Icon(Icons.home)),
                      Tab(icon: Icon(Icons.ad_units)),
                      Tab(icon: Icon(Icons.backpack_outlined)),
                    ],
                  ),
                  // Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, bottom: 40),
                    child: Text(
                      'Intray',
                      style: intrayTextStyle,
                    ),
                  )
                ],
              ),
              Positioned(
                height: 80,
                width: 80,
                bottom: -40,
                left: MediaQuery.of(context).size.width * 0.5 - 40,
                child: FloatingActionButton(
                  onPressed: () {
                    //TODO: add functionality to press.
                  },
                  backgroundColor: redColor,
                  child: Icon(
                    Icons.add,
                    size: 60,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            IntrayPage(),
            Container(color: redColor),
            Container(color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
