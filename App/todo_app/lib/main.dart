// import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'BLoc/globals.dart';
import './UI/components/customAppBar.dart';
import './UI/Intray/intray-page.dart';

void main() {
  // SystemChrome.setEnabledSystemUIOverlays([]);
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   // statusBarColor: Colors.transparent,
  //   systemNavigationBarColor: Colors.black26,
  //   systemNavigationBarDividerColor: Colors.transparent,
  // ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: CupertinoScrollBehavior(),
      title: 'Todo',
      color: kRedColor,
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
          height: kAppBarHeight,
          bottomRadius: kAppBarBottomRadius,
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
                    labelColor: kRedColor,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Tab(icon: Icon(Icons.home)),
                      Tab(icon: Icon(Icons.ad_units)),
                      Tab(icon: Icon(Icons.backpack_outlined)),
                    ],
                  ),
                  // Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: kDefaultMarginFactor,
                      bottom: kDefaultMarginFactor,
                    ),
                    child: Text(
                      'Intray',
                      style: intrayTextStyle,
                    ),
                  )
                ],
              ),
              Positioned(
                height: kDefaultMarginFactor * 2,
                width: kDefaultMarginFactor * 2,
                bottom: -kDefaultMarginFactor,
                left: MediaQuery.of(context).size.width * 0.5 -
                    kDefaultMarginFactor,
                child: FloatingActionButton(
                  elevation: 16,
                  onPressed: () {
                    //TODO: add functionality to press.
                  },
                  backgroundColor: kRedColor,
                  child: Icon(
                    Icons.add,
                    size: kDefaultMarginFactor * 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            IntrayPage(),
            Container(color: kRedColor),
            Container(color: Colors.yellow),
          ],
        ),
      ),
    );
  }
}
