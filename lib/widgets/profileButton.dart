import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:homepage/Utils/Constants.dart';

class ProfileButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                ]),
                onTap: () {
                 Navigator.pushNamed(context, Constants.profileRouteName);
                });
  }
}