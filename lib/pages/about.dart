import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Iconsax.arrow_left,color: Colors.black)),
        title: Text('About',style: TextStyle(color: Colors.black,fontSize:24)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20
          ),
          
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 26),
            child: Text('About: ',style: TextStyle(fontSize: 22),),
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            child: Text('FruitHub is a simple app to order various fruits and vegetables at your nearest stores.\nContains wide variety of fruits at a reasonnable prices.\nKeep an eye on stock and promo codes.It may cary time to time',
            style: TextStyle(fontSize: 16)),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 26),
            child: Text('Developed by: ',style: TextStyle(fontSize: 22),),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 26),
            child: Text('Jithu\nViswesh\nHarshith\nSai Krishna\nSiva Sai\nBala Murali\nVamsiKrishnaReddy\nAkash\nPavan',
            style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
