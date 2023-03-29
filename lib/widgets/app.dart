// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../styles/color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      actions: [
        CustomDropdownMenu(),
        IconButton(
          icon: Icon(Icons.more_vert, color: Colors.black,),
          onPressed: () {
            // Handle menu button press
          },
        ),
      ],
     title: BuySellToggle(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class BuySellToggle extends StatefulWidget {
  const BuySellToggle({super.key});

  @override
  _BuySellToggleState createState() => _BuySellToggleState();
}

class _BuySellToggleState extends State<BuySellToggle> {
  bool _isBuySelected = true;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isBuySelected = true;
            });
          },
          child: Container(
            width: 80,
            height: 40,
            decoration: BoxDecoration(
              color: _isBuySelected ? white : Colors.grey[400],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Center(
              child: Text(
                'Buy',
                style: TextStyle(
                  color: _isBuySelected ? black : white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isBuySelected = false;
            });
          },
          child: Container(
            width: 80,
            height: 40,
            decoration: BoxDecoration(
              color: _isBuySelected ? softWhite : red,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Center(
              child: Text(
                'Sell',
                style: TextStyle(
                  color: _isBuySelected ? black : white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



class CustomDropdownMenu extends StatefulWidget {
  @override
  _CustomDropdownMenuState createState() => _CustomDropdownMenuState();
}

class _CustomDropdownMenuState extends State<CustomDropdownMenu> {
  String _selectedCurrency = 'NGN';
  final List<String> _currencies = ['NGN', 'USD', 'EUR', 'GBP'];
 // void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: _selectedCurrency,
      items: _currencies.map((String currency) {
        return DropdownMenuItem(
          value: currency,
          child: Text(currency),
        );
      }).toList(), onChanged: (String? value) { 
          setState(() {
          _selectedCurrency = value!;
        });

       },
    );
  }
}
