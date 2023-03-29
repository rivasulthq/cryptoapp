// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../screens/exchange.dart';
import '../screens/express.dart';
import '../styles/color.dart';



class CardListView extends StatelessWidget {
  const CardListView({Key? key}) : super(key: key);


  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 15.0),
      child: SizedBox(
        //  width: 184,
        height: 140,

        child: ListView(
         scrollDirection: Axis.horizontal,
          children: [
            Card(
              "Buy Crypto",
              "assets/images/buycrypto.png",
              "Buy Crypto with your \ncredit card or other\nmethod like P2P.",
              onPressed: () {
              
              },
            ),
            Card(
              "Learn Trading ",
              "assets/images/trading.png",
              "Learn how to trade\ncrypto with Ocuupa\n Academy today.",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class Card extends StatefulWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function() onPressed;

  Card(this.text, this.imageUrl, this.subtitle,
      {Key? key, required this.onPressed})
      : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 24, right: 2, bottom: 6),
     //Drop Down Men
      child: GestureDetector(

        onTap: () {
           setState(() {
          _isTapped = !_isTapped;
        });
          _showDropDownMenu(context);
        },
        child: Container(
          width: 210,
          // height: 100,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
           color: _isTapped ? primaryColor : white,
            borderRadius: BorderRadius.circular(12.5),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
           
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.text,
                      softWrap: true,
                      maxLines: 3,
                      //textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.subtitle,
                    // softWrap: true,
                    maxLines: 4,
                    //  textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                ],
              ),
               Image.asset(
                  widget.imageUrl,
                  height: 50,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showDropDownMenu(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.linear_scale,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: const Text(
                      'Express',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Buy and sell Crypto in few taps'),
                    trailing: const  Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Express()),
                      );
                    },
                  ),

                  //P2P
                  ListTile(
                    title: const Text(
                      'P2P',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Trade directly with peers'),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Exchange(),),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
