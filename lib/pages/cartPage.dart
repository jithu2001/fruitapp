import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:fruitapp/pages/ordersPage.dart';
import 'package:fruitapp/pages/homepage.dart';
import 'package:fruitapp/pages/promoCode.dart';
import 'package:fruitapp/pages/searchPage.dart';
import 'package:fruitapp/pages/settingpage.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int orange = 1;
  int carrot = 1;
  int grapes = 1;

  void addOrange() {
    setState(() {
      orange++;
    });
  }

  void removeOrange() {
    setState(() {
      if (orange > 0) orange--;
    });
  }

  void addCarrot() {
    setState(() {
      carrot++;
    });
  }

  void removeCarrot() {
    setState(() {
      if (carrot > 0) carrot--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrdersPage()));
              },
              icon: Icon(
                Iconsax.shopping_bag,
                color: Colors.black,
              ))
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
              icon: Icon(Iconsax.home)),
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
              onPressed: () {},
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
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, left: 10),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 5, right: 10, top: 15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 5, top: 10, bottom: 10),
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      'images/products/image3.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 150,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Fresh Orange',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22)),
                                    SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '\$60.0',
                                          style: TextStyle(
                                              fontSize: 16,
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '\$50.0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        IconButton(
                                          onPressed: removeOrange,
                                          icon: Icon(Icons.remove),
                                          color: Colors.teal.shade200,
                                          highlightColor: Colors.teal,
                                        ),
                                        Text(
                                          '$orange',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                          onPressed: addOrange,
                                          icon: Icon(Icons.add),
                                          color: Colors.teal.shade700,
                                          highlightColor: Colors.teal,
                                          focusColor: Colors.black,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 5, top: 10, bottom: 10),
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      'images/products/carrot.jpg',
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                              Container(
                                margin: EdgeInsets.all(10),
                                height: 150,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Fresh Carrots',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22)),
                                    SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '\$20.0',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        IconButton(
                                          onPressed: removeCarrot,
                                          icon: Icon(Icons.remove),
                                          color: Colors.teal.shade200,
                                          highlightColor: Colors.teal,
                                        ),
                                        Text(
                                          '$carrot',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        IconButton(
                                          onPressed: addCarrot,
                                          icon: Icon(Icons.add),
                                          color: Colors.teal.shade700,
                                          highlightColor: Colors.teal,
                                          focusColor: Colors.black,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: Colors.grey.shade200,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                ListTile(
                                    leading:
                                        Icon(Icons.hourglass_bottom_rounded),
                                    title: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Promo Code'),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PromoCode()));
                                            },
                                            child: const Text(
                                              'Find',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.green)),
                                          )
                                        ],
                                      ),
                                    ))
                              ]),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30, right: 20),
                              child: Text(
                                'Subtotal',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              child: Text(
                                '\$86.50',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30, right: 20),
                              child: Text(
                                'Delivery',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 30),
                              child: Text(
                                '\$18.50',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30, right: 20),
                              child: Text(
                                'Tax \& Fee',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 30),
                              child: Text(
                                '\$9.99',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          '  - - - - - - - - - - - - - - - - - - - - - - - - - - - -   ',
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30, right: 20),
                              child: Text(
                                'Total',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 30),
                              child: Text(
                                '\$99.50',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 20, right: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'CHECKOUT',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.green)),
                            ))
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
