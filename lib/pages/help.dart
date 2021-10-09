import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Iconsax.arrow_left, color: Colors.black)),
          title: Text('Help & Support',
              style: TextStyle(color: Colors.black, fontSize: 24)),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(height: 20),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 26),
            child: Text(
              'For further Help and Support,contact to following Mails:',
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text(
                '-jithu10052001@gmail.com\n-harshith4678@gmail.com\n-krishnakadupudi1972@gmail.com\n-krwnvishu@gmail.com\n-gandupavan2000@gmail.com\nvamsikrishnareddy357@gmail.com\n-chaituchowdary7522@gmail.com\n-akashpatchipulusu45@gmail.com\n-pakalapatibalamurali4959@gmail.com',
                style: TextStyle(fontSize: 18)),
          ),
        ]));
  }
}
