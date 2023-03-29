// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../styles/color.dart';

import '../components/custom_button.dart';

import '../widgets/app.dart';
import '../widgets/custom_text_field.dart';

class Express extends StatelessWidget {
  TextEditingController _minController = TextEditingController();
  TextEditingController _maxController = TextEditingController();

  Express({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Custom App Bar
       appBar: CustomAppBar(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/naira.png'),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('NGN'),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.arrow_forward),
                          Icon(Icons.arrow_back),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/images/usdt.png'),
                      const  SizedBox(
                            height: 10,
                          ),
                        const  Text(
                            'USDT',
                          ),
                        ],
                      ),
                    ],
                  ),
                 const SizedBox(
                    height: 15,
                  ),
        
                  //TextBox
                  CustomTextField(
                    inputController: _minController,
                    hintText: 'Min amount; 2500 NGN',
                    textInput: 'I want to buy',
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    inputController: _maxController,
                    hintText: 'Min quantity; 5 USDT',
                    textInput: 'I want to Receive',
                  ),
                 const Text(
                    'Price = 1.02 USD/USDT',
                    style: TextStyle(fontSize: 12),
                  ),
                 const SizedBox(
                    height: 25,
                  ),
            
                  //Custom Button
                const  Center(
                      child: CustomButton(
                    text: 'Buy USDT',
                    width: double.infinity,
                    
                  )),
                  const SizedBox(
                    height: 250,
                  ),
            
                  //Help Button
                  Row(
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                     
                        },
                        backgroundColor: primaryColor,
                        child: const Icon(Icons.help),
                        // tooltip: 'How to get started in Flutter',
                        // heroTag: 'helpButton',
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(12),
                            )
                            // borderRadius: BorderRadius.all(
                            //   Radius.circular(5),
                            // ),
                            ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'How to get Started? ',
                            style: TextStyle(
                              color: white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
