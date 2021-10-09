import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:fruitapp/pages/fruits.dart';
import 'package:fruitapp/pages/cartPage.dart';
import 'package:fruitapp/pages/notification.dart';
import 'package:fruitapp/pages/searchPage.dart';
import 'package:fruitapp/pages/settingpage.dart';
import 'package:fruitapp/pages/juicygrapes.dart';
import 'package:fruitapp/pages/favourites.dart';

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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Notificationpage()));
              },
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => favrt()));
              },
              icon: Icon(
                Icons.favorite_outlined,
                color: Colors.grey,
              ))
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              height: 90,
              width: 350,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightGreen[50]),
              child: Container(
                padding: EdgeInsets.all(7),
                child: RichText(
                    text: TextSpan(
                        text: "Enjoy the special offer\nup to 60%",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                        children: <TextSpan>[
                      TextSpan(
                        text: "\nat 21-30 october 2021",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ])),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Padding(
                padding: const EdgeInsets.fromLTRB(20, .5, 0, .5),
                child: Text(
                  'Categories',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All   ',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ))
            ],
          ),
          Container(
            height: 110.0,
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0)),
                          width: 140.0,
                          child: ListTile(
                            title: Image.asset(
                              'images/cat/fruit.jpg',
                              width: 50.0,
                              height: 70.0,
                            ),
                            subtitle: Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                'Fruits',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0)),
                          width: 140.0,
                          child: ListTile(
                              title: Image.asset(
                                'images/cat/bread.jpg',
                                width: 50.0,
                                height: 70.0,
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.all(5),
                                child: Text(
                                  'Breads',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  textAlign: TextAlign.center,
                                ),
                              )),
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0)),
                          width: 140.0,
                          child: ListTile(
                              title: Image.asset(
                                'images/cat/dairy.jpg',
                                width: 50.0,
                                height: 70.0,
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.all(5),
                                child: Text(
                                  'Dairy',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  textAlign: TextAlign.center,
                                ),
                              )),
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0)),
                          width: 140.0,
                          child: ListTile(
                              title: Image.asset(
                                'images/cat/veg.jpg',
                                width: 50.0,
                                height: 70.0,
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.all(5),
                                child: Text(
                                  'Veggies',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  textAlign: TextAlign.center,
                                ),
                              )),
                        ),
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Padding(
                padding: const EdgeInsets.fromLTRB(20, .5, 0, .5),
                child: Text(
                  'Best Selling',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All   ',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ))
            ],
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const juicy()),
                );
              },
              child: Container(
                  height: 120,
                  width: 350,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'images/products/image3.jpg',
                              fit: BoxFit.fill,
                            ),
                          )),
                      Container(
                        child: RichText(
                            text: TextSpan(
                                text: "Fresh Oranges\n",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500),
                                children: <TextSpan>[
                              TextSpan(
                                  text:
                                      "\Attributed Lorem is which \nreasonable.injected if type\n",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: "\$40.0 ",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            decoration:
                                                TextDecoration.lineThrough)),
                                    TextSpan(
                                        text: "  \$30.0",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20))
                                  ])
                            ])),
                      ),
                      Expanded(
                          child: Icon(
                        Icons.favorite_outline,
                        color: Colors.green,
                      )),
                    ],
                  ))),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const juicy()),
                );
              },
              child: Container(
                  height: 120,
                  width: 350,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'images/products/carrot.jpg',
                              fit: BoxFit.fill,
                            ),
                          )),
                      Container(
                        child: RichText(
                            text: TextSpan(
                                text: "Fresh Carrots\n",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500),
                                children: <TextSpan>[
                              TextSpan(
                                  text:
                                      "\Carrots have calcium and \nvitamins.\n",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: "\$30.0 ",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            decoration:
                                                TextDecoration.lineThrough)),
                                    TextSpan(
                                        text: "  \$20.0",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20))
                                  ])
                            ])),
                      ),
                      Expanded(
                          child: Icon(
                        Icons.favorite_outline,
                        color: Colors.green,
                      )),
                    ],
                  ))),
          GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const juicy()),
                );
              },
              child: Container(
                  height: 120,
                  width: 350,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]),
                  child: Row(
                    children: [
                      Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'images/products/grapes.jpg',
                              fit: BoxFit.fill,
                            ),
                          )),
                      Container(
                        child: RichText(
                            text: TextSpan(
                                text: "Juicy Grapes\n",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500),
                                children: <TextSpan>[
                              TextSpan(
                                  text:
                                      "\Packed With Nutrients\n And Vitamins!\n",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: "\$70.0",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            decoration:
                                                TextDecoration.lineThrough)),
                                    TextSpan(
                                        text: "  \$65.0",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20))
                                  ])
                            ])),
                      ),
                      Expanded(
                          child: Icon(
                        Icons.favorite_outline,
                        color: Colors.green,
                      )),
                    ],
                  ))),
        ],
      )),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Iconsax.home)),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
            icon: Icon(Icons.search_rounded, color: Colors.black),
            tooltip: 'Search',
            color: Colors.black,
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
              },
              icon: Icon(
                Iconsax.shopping_cart,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settingpage()));
              },
              icon: Icon(Iconsax.setting)),
        ],
      ),
    );
  }
}
