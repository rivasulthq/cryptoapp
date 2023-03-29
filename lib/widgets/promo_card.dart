import 'package:flutter/material.dart';

import '../styles/color.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          children: [
          
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/img1.png"),
            ),
             Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(21.0),
                child: Text(
                  "INTRODUCING METAVERSE ",
                  style: TextStyle(
                      color: white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
              alignment: Alignment(-0.80, .35),
              child: Text(
                "Occupa Metaverse \nlaunches in 5 Days",
                style: TextStyle(
                  color: white,
                  fontSize: 12,
                ),
                // fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
