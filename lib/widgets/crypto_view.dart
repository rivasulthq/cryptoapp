import 'package:flutter/material.dart';

import '../styles/typo.dart';

class CryptoList extends StatelessWidget {
  final String imagePath;
  final String text;
  final String subText;
  final double lastPrice;
  final String change;
  final Color boxColor;
  final TextStyle? textColor;
  const CryptoList(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.subText,
      required this.lastPrice,
      required this.change, 
      required this.boxColor, 
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return  Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
               // 'assets/images/btc.png', 
               imagePath,
                height: 45),
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   // 'BTC',
                   text,
                    style: subheader,
                  ),
                  SizedBox(height: 2),
                  Text(
                    subText,
                   // 'Bitcoin',
                    style: small,
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                  '\$'+lastPrice.toString(),
                   // '\$40,053.6',
                    style: price,
                  ),
                 const SizedBox(
                    width: 35,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: boxColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.all(8),
                      child: Text(
                        change,
                        style: textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
    );
  }
}
