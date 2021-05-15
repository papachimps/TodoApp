import 'package:flutter/material.dart';
import 'package:todo_app/customAppBar.dart';

import 'models/globals.dart';

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
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            height: 200,
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
                      labelColor: Colors.yellow,
                      physics: BouncingScrollPhysics(),           
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Tab(icon: Icon(Icons.ac_unit_rounded)),
                        Tab(icon: Icon(Icons.ad_units)),
                        Tab(icon: Icon(Icons.backpack_outlined)),
                      ],
                    ),
                    // Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, bottom: 40),
                      child: Text(
                        'InTray',
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
                    onPressed: () {},
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
              Container(color: darkGreyColor),
              Container(color: Colors.red),
              Container(color: Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
