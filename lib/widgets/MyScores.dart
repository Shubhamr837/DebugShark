import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyScores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 4 * MediaQuery.of(context).size.width / 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            shadowColor: Colors.grey,
            child: Container(
              width: 600,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Daily Practice',
                        style: GoogleFonts.patuaOne(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('0 Solved'),
                    ],
                  ),
                  RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[900],
                      child: Text('0 Points',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 18)))
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            shadowColor: Colors.grey,
            child: Container(
              width: 600,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Interview Preparation',
                        style: GoogleFonts.patuaOne(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('0 Solved'),
                    ],
                  ),
                  RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[900],
                      child: Text('0 Points',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 18)))
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            shadowColor: Colors.grey,
            child: Container(
              width: 600,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Data structures and Algorithms',
                        style: GoogleFonts.patuaOne(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('0 Solved'),
                    ],
                  ),
                  RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[900],
                      child: Text('0 Points',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 18)))
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            shadowColor: Colors.grey,
            child: Container(
              width: 600,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Language Preparation',
                        style: GoogleFonts.patuaOne(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('0 Solved'),
                    ],
                  ),
                  RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[900],
                      child: Text('0 Points',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 18)))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
