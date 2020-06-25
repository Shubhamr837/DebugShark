import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(color: Colors.blue[900], width: 5))),
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Terms',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text('sitemap', style: TextStyle(color: Colors.grey)),
                      Text(
                        'about',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'feedback',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        'Copyright CodeKitchen@2020',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  )
                ],
              ),
            );
  }
}