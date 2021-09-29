import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:homepage/Utils/Constants.dart';
import 'package:homepage/pages/Questions.dart';
import 'package:homepage/widgets/HomepageTabs/BookmarkedTab.dart';
import './widgets/HomepageTabs/practiceTab.dart';
import './pages/profile.dart';
import './widgets/profileButton.dart';
import 'Utils/fluro_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Fluro.setUpRouter();
  }
  @override
  Widget build(BuildContext context) {
    log("in main");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Debuging',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: Fluro.router.generator,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width / 3,
                child: Text(
                  "Code </> Kitchen",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
              ),
            ],
          ),
          actions: [
            ProfileButton(),
          ],
          elevation: 0.0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.blue[900]),
                  unselectedLabelStyle: TextStyle(
                      fontWeight: FontWeight.w200, color: Colors.blue[600]),
                  tabs: [
                    Tab(
                      child: Text('Practice',
                          style: TextStyle(color: Colors.blue[900])),
                    ),
                    Tab(
                      child: Text('Bookmarked',
                          style: TextStyle(color: Colors.blue[900])),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(child: PracticeTab()),
            BookmarkedTab(),
          ],
        ),
      ),
    );
  }
}
