import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height,
      width: 4 * MediaQuery.of(context).size.width / 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Full Name'),
          SizedBox(height: 10),
          Container(
            width: 2 * MediaQuery.of(context).size.width / 5,
            child: TextField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "Full Name",
                  fillColor: Colors.white70),
            ),
          ),
          SizedBox(height: 10),
          Text('Email id'),
          SizedBox(height: 10),
          Container(
            width: 2 * MediaQuery.of(context).size.width / 5,
            child: TextField(
              decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "E-Mail Id",
                  fillColor: Colors.white70),
            ),
          ),
          SizedBox(height: 10),
          Text('Description'),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 2 * MediaQuery.of(context).size.width / 5,
              child: TextField(
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.grey[800]),
                    hintText: "Description",
                    fillColor: Colors.white70),
              ),
              )
        ],
      ),
    );
  }
}
