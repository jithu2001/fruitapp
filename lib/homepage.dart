import 'package:flutter/material.dart';

import 'fruits.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

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
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              height: 80,
              width: 350,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightGreen[50]),
              child: Container(
                child: RichText(
                    text: TextSpan(
                        text: "Enjoy the special offer\nup to 60%",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                        children: <TextSpan>[
                      TextSpan(
                        text: "\nat 21-30 october 2021",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ])),
              )),
          Row(
            children: [
              Expanded(
                child: new Padding(
                  padding: const EdgeInsets.fromLTRB(20, .5, 0, .5),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      )))
            ],
          ),
          Container(
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150.0,
                          child: ListTile(
                            title: Image.asset(
                              'images/cat/fruit.jpg',
                              width: 50.0,
                              height: 70.0,
                            ),
                            subtitle: Text(
                              'Fruits',
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Fruitpage()),
                              );
                            },
                          ),
                        ),
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150.0,
                          child: ListTile(
                            title: Image.asset(
                              'images/cat/bread.jpeg',
                              width: 50.0,
                              height: 80.0,
                            ),
                          ),
                        ),
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150.0,
                          child: ListTile(
                            title: Image.asset(
                              'images/cat/veg.jpeg',
                              width: 50.0,
                              height: 80.0,
                            ),
                          ),
                        ),
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: new Padding(
                  padding: const EdgeInsets.fromLTRB(20, .5, 0, .5),
                  child: Text(
                    'Best Selling',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      )))
            ],
          ),
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
                            style: TextStyle(color: Colors.green, fontSize: 20),
                            children: <TextSpan>[
                          TextSpan(
                            text:
                                "\Attributed Lorem is which\nreasonable.injected if type\n",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
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
                            style: TextStyle(color: Colors.green, fontSize: 20),
                            children: <TextSpan>[
                          TextSpan(
                            text: "\Carrots have calcium and \nvitamins.\n",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
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
                            style: TextStyle(color: Colors.green, fontSize: 20),
                            children: <TextSpan>[
                          TextSpan(
                            text: "\Packed With Nutrients\n And Vitamins!\n",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
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
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white.withOpacity(0.1),
        elevation: 1,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.green,
        onTap: null,
      ),
    );
  }
}
