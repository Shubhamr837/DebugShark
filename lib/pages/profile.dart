import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepage/widgets/MyScores.dart';

import '../widgets/Footer.dart';
import '../widgets/Submissions.dart';
import '../widgets/EditProfile.dart';

class ProfilePage extends StatefulWidget {
  Widget _containerChild = MyScores();
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Color> _colors = [Colors.lightBlue[500], Colors.lightBlue[900]];
    final List<double> _stops = [0.0, 0.9];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    MaterialIcons.account_circle,
                    color: Colors.grey,
                    size: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Shubhamr837',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 40)
                ],
              ),
              onTap: () {}),
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: _colors,
                  stops: _stops,
                ),
              ),
              height: 40,
              padding: EdgeInsetsDirectional.only(start: 16, top: 10),
              child: Text(
                'Profile',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.grey[300],
                    child: Column(
                      children: [
                        Card(
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          margin: EdgeInsets.all(0),
                          borderOnForeground: false,
                          child: Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width / 5,
                            padding: EdgeInsetsDirectional.only(
                                start: 0, top: 0, bottom: 0, end: 0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  child: Container(
                                    color: widget._containerChild is MyScores
                                        ? Colors.blue[200]
                                        : Colors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 16),
                                        Text(
                                          'My Scores',
                                          style: TextStyle(
                                              color: widget._containerChild
                                                      is MyScores
                                                  ? Colors.white
                                                  : Colors.grey),
                                        ),
                                        Wrap(
                                          children: [
                                            Container(
                                              color: widget._containerChild
                                                      is MyScores
                                                  ? Colors.blue[200]
                                                  : Colors.blue[900],
                                              child: Icon(
                                                MaterialIcons.arrow_forward,
                                                color: Colors.white,
                                                size: 40,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      widget._containerChild = MyScores();
                                    });
                                  },
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  child: Container(
                                    color: widget._containerChild is Submissions
                                        ? Colors.blue[200]
                                        : Colors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 16),
                                        Text(
                                          'Submissions',
                                          style: TextStyle(
                                              color: widget._containerChild
                                                      is Submissions
                                                  ? Colors.white
                                                  : Colors.grey),
                                        ),
                                        Wrap(
                                          children: [
                                            Container(
                                              color: widget._containerChild
                                                      is Submissions
                                                  ? Colors.blue[200]
                                                  : Colors.blue[900],
                                              child: Icon(
                                                MaterialIcons.arrow_forward,
                                                color: Colors.white,
                                                size: 40,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      widget._containerChild = Submissions();
                                    });
                                  },
                                ),
                                GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  child: Container(
                                      color:
                                          widget._containerChild is EditProfile
                                              ? Colors.blue[200]
                                              : Colors.white,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 16),
                                          Text(
                                            'Edit Profile',
                                            style: TextStyle(
                                                color: widget._containerChild
                                                        is EditProfile
                                                    ? Colors.white
                                                    : Colors.grey),
                                          ),
                                          Wrap(
                                            children: [
                                              Container(
                                                color: widget._containerChild
                                                        is EditProfile
                                                    ? Colors.blue[200]
                                                    : Colors.blue[900],
                                                child: Icon(
                                                  MaterialIcons.arrow_forward,
                                                  color: Colors.white,
                                                  size: 40,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )),
                                  onTap: () {
                                    setState(() {
                                      widget._containerChild = EditProfile();
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  widget._containerChild
                ],
              ),
            ),
            Footer()
          ],
        ),
      ),
    );
  }
}
