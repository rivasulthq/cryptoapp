// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../styles/color.dart';
import '../widgets/app.dart';
import '../widgets/coin.dart';

class Exchange extends StatelessWidget {
  const Exchange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Custom App Bar
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(children: [
                  Text(
                    "USDT",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                     decorationColor: primaryColor),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "USDN",
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "BTC",
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "ETH",
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "OCU",
                  )
                ]),
                Divider(height: 1,),

                //Coin
                const Coin(
                  imageFile: 'assets/images/b.png',
                  text: 'BoyBTC',
                  price: 'Price',
                  amount: 'Amount 3.4005 USDT',
                  limit: 'Limit  ₦500 - ₦20000',
                  naira: '₦575',
                  order: '302 order(s) 85.6%',
                  payImage: 'assets/images/pay.png',
                  payPalImage: 'assets/images/paypal.png',
                ),
                Divider(),
                const Coin(
                  imageFile: 'assets/images/b.png',
                  text: 'BoyBTC',
                  price: 'Price',
                  amount: 'Amount 3.4005 USDT',
                  limit: 'Limit  ₦500 - ₦20000',
                  naira: '₦575',
                  order: '302 order(s) 85.6%',
                  payImage: 'assets/images/pay.png',
                  payPalImage: 'assets/images/paypal.png',
                ),
                Divider(),
                const Coin(
                  imageFile: 'assets/images/b.png',
                  text: 'BoyBTC',
                  price: 'Price',
                  amount: 'Amount 3.4005 USDT',
                  limit: 'Limit  ₦500 - ₦20000',
                  naira: '₦575',
                  order: '302 order(s) 85.6%',
                  payImage: 'assets/images/pay.png',
                  payPalImage: 'assets/images/paypal.png',
                ),
                Divider(),
                const Coin(
                  imageFile: 'assets/images/b.png',
                  text: 'BoyBTC',
                  price: 'Price',
                  amount: 'Amount 3.4005 USDT',
                  limit: 'Limit  ₦500 - ₦20000',
                  naira: '₦575',
                  order: '302 order(s) 85.6%',
                  payImage: 'assets/images/pay.png',
                  payPalImage: 'assets/images/paypal.png',
                ),
                Divider(),
                const Coin(
                  imageFile: 'assets/images/b.png',
                  text: 'BoyBTC',
                  price: 'Price',
                  amount: 'Amount 3.4005 USDT',
                  limit: 'Limit  ₦500 - ₦20000',
                  naira: '₦575',
                  order: '302 order(s) 85.6%',
                  payImage: 'assets/images/pay.png',
                  payPalImage: 'assets/images/paypal.png',
                ),
                Divider(),
                const Coin(
                  imageFile: 'assets/images/b.png',
                  text: 'BoyBTC',
                  price: 'Price',
                  amount: 'Amount 3.4005 USDT',
                  limit: 'Limit  ₦500 - ₦20000',
                  naira: '₦575',
                  order: '302 order(s) 85.6%',
                  payImage: 'assets/images/pay.png',
                  payPalImage: 'assets/images/paypal.png',
                ),
                Divider(),
                const Coin(
                  imageFile: 'assets/images/b.png',
                  text: 'BoyBTC',
                  price: 'Price',
                  amount: 'Amount 3.4005 USDT',
                  limit: 'Limit  ₦500 - ₦20000',
                  naira: '₦575',
                  order: '302 order(s) 85.6%',
                  payImage: 'assets/images/pay.png',
                  payPalImage: 'assets/images/paypal.png',
                ),
                Divider(),
                const Coin(
                  imageFile: 'assets/images/b.png',
                  text: 'BoyBTC',
                  price: 'Price',
                  amount: 'Amount 3.4005 USDT',
                  limit: 'Limit  ₦500 - ₦20000',
                  naira: '₦575',
                  order: '302 order(s) 85.6%',
                  payImage: 'assets/images/pay.png',
                  payPalImage: 'assets/images/paypal.png',
                ),

//Post an Ad
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.grey[200],
                  padding: EdgeInsets.all(16.0),
                  child:
                      //SizedBox(width: 16.0),
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Post an ad",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "Buy/Sell all your crypto \nby posting Ad",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      MaterialButton(
                        onPressed: () {
                          // handle buy button press
                        },
                        color: green,
                        textColor: white,
                        minWidth: 10,
                        child: Text("Buy"),
                      ),
                      MaterialButton(
                        onPressed: () {
                          // handle sell button press
                        },
                        color: sell,
                        textColor: white,
                        minWidth: 10,
                        child: Text("Sell"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
