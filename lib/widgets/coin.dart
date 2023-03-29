import 'dart:core';

import 'package:flutter/material.dart';
import '/styles/color.dart';

class Coin extends StatelessWidget {
  final String imageFile;
  final String text;
  final String amount;
  final String limit;
  final String payImage;
  final String payPalImage;
  final String order;
  final String price;
  final String naira;

  const Coin(
      {super.key,
      required this.text,
      required this.imageFile,
      required this.amount,
      required this.limit,
      required this.payImage,
      required this.payPalImage,
      required this.order,
      required this.price,
      required this.naira});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
              //  Image.asset('assets/images/b.png'),
                 Image.asset(imageFile),
                SizedBox(
                  width: 5,
                ),
                Text(
                  text,
                  //"BoyBTC",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              amount,
           //   "Amount 3.4005 USDT",
            ),
            Text(
              limit
            //  "Limit  ₦500 - ₦20000",
            ),
            Row(
              children: [
              //  Image.asset('assets/images/pay.png'),
                  Image.asset(payImage),
                SizedBox(
                  width: 5,
                ),
                Image.asset(payPalImage),
                // Image.asset('assets/images/paypal.png'),
              ],
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              order,
              //"302 order(s) 85.6%",
            ),
            Text(
              price,
              //'Price'
              ),
            Text(
              naira,
             // '₦575',
              style: TextStyle(
                color: primaryColor,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'Buy',
                  style: TextStyle(color: white),
                ),
              ),
            ),
          ],
        )
      ]);
    
  }
}
