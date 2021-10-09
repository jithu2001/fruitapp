import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PromoCode extends StatefulWidget {
  const PromoCode({Key? key}) : super(key: key);

  @override
  _PromoCodeState createState() => _PromoCodeState();
}

class _PromoCodeState extends State<PromoCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Promo Codes',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Iconsax.arrow_left, color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
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
                        height: 20,
                      ),
                      promocodes(
                          'FIRST50', '50% off on your first order upto \$40\n'),
                      SizedBox(
                        height: 20,
                      ),
                      promocodes('BUY1GET1',
                          'Buy one and get one for free on \nselected items'),
                      SizedBox(
                        height: 20,
                      ),
                      promocodes(
                          'GPAY21', 'Get \$5 upon paying with GooglePay\n'),
                      SizedBox(
                        height: 20,
                      ),
                      promocodes(
                          'FREEDEL', 'Free delivery for first 3 orders\n'),
                      SizedBox(
                        height: 20,
                      ),
                      promocodes('PAYTM5',
                          'CashBack off \$5 when paid through PAYTM\n'),
                      SizedBox(
                        height: 20,
                      ),
                      promocodes('DUSSEHRA', 'Festive bonus of \$1\n'),
                      SizedBox(
                        height: 20,
                      ),
                      promocodes('IMMUNITY',
                          'Get two oranges for free to boost \nyour immunity'),
                      SizedBox(
                        height: 20,
                      ),
                      promocodes('AMZPAY',
                          'Upto \$2 cashback when paid through \nAmazonPay\n'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Card promocodes(String code, description) {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20),
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.grey.shade200,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        ListTile(
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$code',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Apply',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                )
              ],
            ),
          ),
          subtitle: Text('$description'),
        )
      ]),
    );
  }
}
