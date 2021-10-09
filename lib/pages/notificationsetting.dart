// ignore_for_file: prefer_const_constructors
import 'package:fruitapp/widget/sstring.dart';
import 'package:flutter/material.dart';

class Ntfn extends StatefulWidget {
  const Ntfn({Key? key}) : super(key: key);

  @override
  _NtfnState createState() => _NtfnState();
}

class _NtfnState extends State<Ntfn> {
  bool isswitched = false;
  bool isswitched2 = false;
  bool isswitched3 = false;
  bool isswitched4 = false;
  bool isswitched5 = false;
  bool isswitched6 = false;
  bool isswitched7 = false;
  bool isswitched8 = false;
  bool isswitched9 = false;

  get $ => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Notifications",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Colors.white),
        body: Container(
            //padding: EdgeInsets.only(left: 5),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 121,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          offset: Offset(5, 5),
                          color: Colors.grey.withOpacity(0.5)),
                      BoxShadow(
                          blurRadius: 2,
                          offset: Offset(-5, -5),
                          color: Colors.grey.withOpacity(0.5))
                    ]),
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "${notifications.pos1}",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Switch(
                        value: isswitched,
                        onChanged: (value) {
                          setState(() {
                            isswitched = value;
                            print(isswitched);
                          });
                        },
                        activeColor: Colors.blue,
                        activeTrackColor: Colors.lightBlueAccent,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "${notifications.pos2}",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Switch(
                        value: isswitched2,
                        onChanged: (value) {
                          setState(() {
                            isswitched2 = value;
                          });
                        },
                        activeColor: Colors.blue,
                        activeTrackColor: Colors.lightBlueAccent,
                      )
                    ],
                  ),
                ]),
              ),
              Text(
                "${notifications.pos3}",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 268,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            offset: Offset(5, 5),
                            color: Colors.grey.withOpacity(0.5)),
                        BoxShadow(
                            blurRadius: 2,
                            offset: Offset(-5, -5),
                            color: Colors.grey.withOpacity(0.5))
                      ]),
                  padding: EdgeInsets.all(15),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      //crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(
                                "${notifications.pos4}",
                                //textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${notifications.pos5}",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ])),
                        Switch(
                          value: isswitched4,
                          onChanged: (value) {
                            setState(() {
                              isswitched4 = value;
                            });
                          },
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.lightBlueAccent,
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      //crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Expanded(
                            child: BBoxWidget(
                                notifications.pos6, notifications.pos7)),
                        Switch(
                          value: isswitched5,
                          onChanged: (value) {
                            setState(() {
                              isswitched5 = value;
                            });
                          },
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.lightBlueAccent,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      //crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Expanded(
                            child: BBoxWidget(
                                notifications.pos8, notifications.pos9)),
                        Switch(
                          value: isswitched6,
                          onChanged: (value) {
                            setState(() {
                              isswitched6 = value;
                            });
                          },
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.lightBlueAccent,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      //crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Expanded(
                            child: BBoxWidget(
                                notifications.pos10, notifications.pos11)),
                        Switch(
                          value: isswitched9,
                          onChanged: (value) {
                            setState(() {
                              isswitched9 = value;
                            });
                          },
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.lightBlueAccent,
                        )
                      ],
                    ),
                  ])),
              Text(
                "${notifications.pos12}",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: 210,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 2,
                            offset: Offset(5, 5),
                            color: Colors.grey.withOpacity(0.5)),
                        BoxShadow(
                            blurRadius: 2,
                            offset: Offset(-5, -5),
                            color: Colors.grey.withOpacity(0.5))
                      ]),
                  padding: EdgeInsets.all(15),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      //crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Expanded(
                          child: BBoxWidget(
                              notifications.pos13, notifications.pos14),
                        ),
                        Switch(
                          value: isswitched7,
                          onChanged: (value) {
                            setState(() {
                              isswitched7 = value;
                            });
                          },
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.lightBlueAccent,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      //crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Expanded(
                            child: BBoxWidget(
                                notifications.pos15, notifications.pos16)),
                        Switch(
                          value: isswitched3,
                          onChanged: (value) {
                            setState(() {
                              isswitched3 = value;
                            });
                          },
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.lightBlueAccent,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      //crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Expanded(
                            child: BBoxWidget(
                                notifications.pos17, notifications.pos18)),
                        Switch(
                          value: isswitched8,
                          onChanged: (value) {
                            setState(() {
                              isswitched8 = value;
                            });
                          },
                          activeColor: Colors.blue,
                          activeTrackColor: Colors.lightBlueAccent,
                        )
                      ],
                    ),
                  ])),
            ]))));
  }

  Column BBoxWidget(String big, String small) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "$big",
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        "$small",
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
      ),
    ]);
  }
}
