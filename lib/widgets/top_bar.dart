
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              "assets/images/userphoto.png",
            ),
          ),

          Container(
       
            width: 170,
     
        child: TextField(
          onChanged: (value) {
            //Do something wi
          },
          decoration:  const InputDecoration(
            prefixIcon: Icon(Icons.search),
            filled: true,
            //fillColor: s,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey),
          
            border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
          ),
        ),
      ),
             IconButton(icon: Icon(Icons.dashboard), onPressed:() {
            //do something
          },),
          IconButton(icon: Icon(Icons.notifications), onPressed:() {
            
          },),
       
        ],
      ),
    );
  }
}
