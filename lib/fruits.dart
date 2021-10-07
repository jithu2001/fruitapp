import 'package:flutter/material.dart';

class Fruitpage extends StatelessWidget {
  const Fruitpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset('images/cat/fruit.jpeg'),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                  height: 120,
                  width: 350,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                              margin: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'images/products/orange.jpg',
                                  height: 100,
                                  width: 2,
                                  fit: BoxFit.cover,
                                ),
                              ))),
                      Container(
                        child: RichText(
                            text: TextSpan(
                                text: "Fresh oranges\n",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 20),
                                children: <TextSpan>[
                              TextSpan(
                                text:
                                    "\Attributed Lorem is which\nreasonable.injected if type\n",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ])),
                      ),
                      Text(
                        "\$50.0",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      )
                    ],
                  )),
              Container(
                  height: 120,
                  width: 350,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                              margin: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'images/products/carrot.jpg',
                                  height: 100,
                                  width: 2,
                                  fit: BoxFit.cover,
                                ),
                              ))),
                      Container(
                        child: RichText(
                            text: TextSpan(
                                text: "Fresh Carrots\n",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 20),
                                children: <TextSpan>[
                              TextSpan(
                                text: "\Carrots have calcium and \nvitamins.\n",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ])),
                      ),
                      Text(
                        "\$20.0",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      )
                    ],
                  )),
              Container(
                  height: 120,
                  width: 350,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                              margin: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'images/products/grapes.jpg',
                                  height: 100,
                                  width: 2,
                                  fit: BoxFit.cover,
                                ),
                              ))),
                      Container(
                        child: RichText(
                            text: TextSpan(
                                text: "Fresh Juicy Grapes\n",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 20),
                                children: <TextSpan>[
                              TextSpan(
                                text:
                                    "\Packed With Nutrients\n And Vitamins!\n",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ])),
                      ),
                      Text(
                        "\$50.0",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      )
                    ],
                  )),
              Container(
                  height: 120,
                  width: 350,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                              margin: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'images/products/broc.jpg',
                                  height: 100,
                                  width: 2,
                                  fit: BoxFit.cover,
                                ),
                              ))),
                      Container(
                        child: RichText(
                            text: TextSpan(
                                text: "Fresh Juicy Grapes\n",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 20),
                                children: <TextSpan>[
                              TextSpan(
                                text:
                                    "\Packed With Nutrients\n And Vitamins!\n",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              )
                            ])),
                      ),
                      Text(
                        "\$50.0",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
