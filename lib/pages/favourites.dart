// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class favrt extends StatefulWidget {
  const favrt({Key? key}) : super(key: key);

  @override
  _favrtState createState() => _favrtState();
}

class _favrtState extends State<favrt> {
  List infos = [
    {0: "images/products/image3.jpg", 1: "Fresh Oranges", 2: "\$12.25"},
    {0: "images/products/image2.jpg", 1: "Juicy Grapes", 2: "\$2.32"},
    {0: "images/products/cauliflower.jpg", 1: "Cauliflower", 2: "\$14.99"},
    {0: "images/products/broc.jpg", 1: "Broccoli", 2: "\$10.99"},
    {0: "images/products/carrot.jpg", 1: "Carrots", 2: "\$15.23"},
    {0: "images/products/image4.jpg", 1: "Oranges", 2: "\$11.52"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
          title: const Text(
            "Favourites",
            style: TextStyle(
                fontSize: 19, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              /*const Text(
            'Favourite',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            //textAlign: TextAlign.justify,
          ),*/
              //Container(
              //  child:
              //SingleChildScrollView(
              //  child: Container(
              //   child: ,

              // ),),
              //)
              SizedBox(height: 10),
              Expanded(
                  child: ListView.builder(
                itemCount: (infos.length.toDouble() / 2).toInt(),
                itemBuilder: (_, i) {
                  int a = 2 * i;
                  int b = 2 * i + 1;
                  return Row(
                    children: [
                      Container(
                          height:
                              ((MediaQuery.of(context).size.width - 90) / 2) +
                                  41,
                          margin: EdgeInsets.only(left: 20, bottom: 15),
                          width: (MediaQuery.of(context).size.width - 90) / 2,
                          //padding: EdgeInsets.all(5),
                          child: Column(children: [
                            Container(
                                height:
                                    (MediaQuery.of(context).size.width - 90) /
                                        2,
                                width:
                                    (MediaQuery.of(context).size.width - 90) /
                                        2,
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(infos[a][0]),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      infos[a][1],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      infos[a][2],
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                                Expanded(child: Container()),
                                Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 8,
                                )
                              ],
                            ),
                          ])),
                      Container(
                          height:
                              ((MediaQuery.of(context).size.width - 90) / 2) +
                                  31 +
                                  10,
                          width: (MediaQuery.of(context).size.width - 90) / 2,
                          margin:
                              EdgeInsets.only(left: 30, bottom: 15, right: 20),
                          //padding: EdgeInsets.all(5),
                          child: Column(children: [
                            Container(
                                height:
                                    (MediaQuery.of(context).size.width - 90) /
                                        2,
                                width:
                                    (MediaQuery.of(context).size.width - 90) /
                                        2,
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(infos[b][0]),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      infos[b][1],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      infos[b][2],
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                                Expanded(child: Container()),
                                Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 8,
                                )
                              ],
                            ),
                          ]))
                    ],
                  );
                },
              ))
            ],
          ),
        ));
  }
}
