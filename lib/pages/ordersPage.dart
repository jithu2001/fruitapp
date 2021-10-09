import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title:
            Text('Orders', style: TextStyle(fontSize: 24, color: Colors.black)),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            orders('4568', 49.49, '12 April 2021,1:45', 'IN PROGRESS',
                'carrot.jpg', 'grapes.jpg', 'image3.jpg'),
            SizedBox(
              height: 20,
            ),
            orders('1478', 54.99, '14 Feb 2021,12:04', 'DELIVERED', 'broc.jpg',
                'carrot.jpg', 'white.png'),
            SizedBox(
              height: 20,
            ),
            orders('1123', 69.99, '16 Dec 2019,8:48', 'DELIVERED',
                'cauliflower.jpg', 'grapes.jpg', 'broc.jpg'),
            SizedBox(
              height: 20,
            ),
            orders('2876', 85.59, '26 Dec 2018,8:48', 'DELIVERED', 'carrot.jpg',
                'grapes.jpg', 'image3.jpg'),
          ],
        ),
      ),
    );
  }

  Card orders(String order_no, double amount, String date_time, String status,
      String image1, image2, image3) {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20),
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Order $order_no',
                  style: TextStyle(color: Colors.black, fontSize: 24)),
              Container(
                  margin: EdgeInsets.only(right: 8),
                  child: TextButton(
                    onPressed: () {},
                    child:
                        Text('$status', style: TextStyle(color: Colors.black)),
                    style: TextButton.styleFrom(primary: Colors.grey),
                  ))
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 35,
              ),
              Text('\$$amount',
                  style: TextStyle(color: Colors.black, fontSize: 20))
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 35,
              ),
              Text('$date_time',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child:
                      Image.asset('images/products/$image1', fit: BoxFit.fill),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child:
                      Image.asset('images/products/$image2', fit: BoxFit.fill),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child:
                      Image.asset('images/products/$image3', fit: BoxFit.fill),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
