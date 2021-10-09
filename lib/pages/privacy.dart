import 'package:flutter/material.dart';

class Privay extends StatelessWidget {
  const Privay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Privacy & Security',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.topCenter,
        child: Text(
          "We keep your personal information private, safe and secure.\n\n\nProtecting your privacy starts with the world’s most advanced security.\n\n\nYour privacy is protected by responsible data practices.",
          style: TextStyle(color: Colors.blue, fontSize: 26),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
