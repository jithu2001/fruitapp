// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'dart:ffi';

import 'package:flutter/material.dart';

class Grapes extends StatelessWidget {
  //const Grapes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "mont"),
      home: juicy(),
    );
  }
}

class juicy extends StatefulWidget {
  const juicy({Key? key}) : super(key: key);

  @override
  _juicyState createState() => _juicyState();
}

class _juicyState extends State<juicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage("images/products/image2.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.grey[800],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Juicy Grapes",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Expanded(child: Container()),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      color: Colors.green[100]),
                                  child: Text(
                                    "(215 reviews) >",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$3.99",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "\$2.32",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                  "Century text. to handful to anything making uses.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                //height: 50,
                                //width: 100,
                                margin: EdgeInsets.only(right: 50),
                                child: increbtn(),
                              ),
                              Expanded(child: Container()),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          color: Colors.green),
                                      child: Text(
                                        "Buy Now",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Related",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w800),
                              ),
                              Text("See All",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[600],
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          productWidget("image3", "Orange Fresh Juice"),
                          SizedBox(
                            height: 15,
                          ),
                          productWidget("image5", "Fresh Carrot"),
                          SizedBox(
                            height: 15,
                          ),
                          productWidget("image6", "Juicy Carrot"),
                          SizedBox(
                            height: 15,
                          ),
                          productWidget("image4", "Pulpy Orange"),
                          SizedBox(
                            height: 15,
                          ),
                          productWidget("image6", "Juicy Carrot"),
                          SizedBox(
                            height: 15,
                          ),
                          productWidget("image4", "Pulpy Orange"),
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Row productWidget(String img, String name) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/products/$img.jpg"),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        Padding(padding: EdgeInsets.all(5)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                "$name",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "But to repeat is dictionary graphic this it.",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "\$15.0",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text("\$12.25",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ))
                ],
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            child: Icon(
              Icons.favorite_border,
              color: Colors.green,
            ),
          ),
        )
      ],
    );
  }
}

class increbtn extends StatefulWidget {
  const increbtn({Key? key}) : super(key: key);

  @override
  _increbtnState createState() => _increbtnState();
}

class _increbtnState extends State<increbtn> {
  int _count = 1;
  void _incrementbtn() {
    setState(() {
      _count++;
    });
  }

  void _decrementbtn() {
    if (_count < 1) {
      return;
    }
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: _decrementbtn,
            child: Icon(
              Icons.remove,
              size: 20,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text("${_count}"),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: _incrementbtn,
            child: Icon(
              Icons.add,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
