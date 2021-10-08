import 'package:flutter/material.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Notification',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.sort,
                  color: Colors.black,
                ))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            height: 100,
            child: Row(children: [
              Expanded(
                  flex: 3,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'images/cat/placed.jpg',
                          height: 100,
                          width: .5,
                          fit: BoxFit.fill,
                        ),
                      ))),
              Container(
                  child: RichText(
                      text: TextSpan(
                text: "Your order placed successfully      ",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ))),
              Container(
                child: Text(
                  'Just Now  ',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              )
            ]),
          ),
          Container(
            child: Row(children: [
              Expanded(
                  flex: 3,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'images/cat/cancel.jpg',
                          height: 100,
                          width: .5,
                          fit: BoxFit.fill,
                        ),
                      ))),
              Container(
                  child: RichText(
                      text: TextSpan(
                text: "Your last order canceled           ",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ))),
              Container(
                child: Text(
                  '1 Day ago  ',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              )
            ]),
          ),
          Container(
            child: Row(children: [
              Expanded(
                  flex: 3,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'images/cat/deli.jpg',
                          height: 100,
                          width: .5,
                          fit: BoxFit.fill,
                        ),
                      ))),
              Container(
                  child: RichText(
                      text: TextSpan(
                text: "Your order successfully delivered!",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ))),
              Container(
                child: Text(
                  '4 days ago  ',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              )
            ]),
          ),
          Container(
            child: Row(children: [
              Expanded(
                  flex: 3,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          'images/cat/letter.png',
                          height: 100,
                          width: .5,
                          fit: BoxFit.fill,
                        ),
                      ))),
              Container(
                  child: RichText(
                      text: TextSpan(
                text: "You have received an email     ",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ))),
              Container(
                child: Text(
                  '4 month ago  ',
                  style: TextStyle(color: Colors.grey, fontSize: 10),
                ),
              )
            ]),
          ),
          Container(
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                  textAlign: TextAlign.center,
                )),
          )
        ])));
  }
}
