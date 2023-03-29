import 'package:cryptoapp/styles/typo.dart';
import 'package:flutter/material.dart';

import '../styles/color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController inputController;
    final String hintText;
    final String textInput;
  const CustomTextField({Key? key,
  required this.inputController, 
  required this.hintText, 
  required this.textInput}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
 
   
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textInput,
            style: textField,
            ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
           
            child: TextField(
              controller: inputController,
              onChanged: (value) {
                //Do something wi
              },
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(fontSize: 14, color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: white,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
                contentPadding:
                    const EdgeInsets.symmetric( horizontal: 20.0),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide( width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
               
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide( width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
        ],
    );
  }
}
