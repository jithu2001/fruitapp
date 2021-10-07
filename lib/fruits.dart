import 'package:flutter/material.dart';

class Fruitpage extends StatelessWidget {
  const Fruitpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      elevation: 0.0,
      title: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
            text: "Hi, Customer!",
            style: TextStyle(fontSize: 20, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: '\nWhat would you buy today?',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ]),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.grey,
            ))
      ],
      backgroundColor: Colors.white,
    ));
  }
}
