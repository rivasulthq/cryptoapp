import 'package:cryptoapp/styles/color.dart';
import 'package:flutter/material.dart';

class SHeadline extends StatelessWidget {
  const SHeadline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
              Text(
                "Top Crypto",
                style: TextStyle(
                    color: primaryColor,
                   // fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
             const SizedBox(width: 25,),
           
          Text(
            "New Listing",
            style: TextStyle(
              
                color: Colors.grey, 
                
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}