import 'package:flutter/material.dart';
import '../components/custom_button.dart';

import '../widgets/top_bar.dart';
import '../widgets/crypto_view.dart';

import '../styles/color.dart';
import '../styles/typo.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/card.dart';
import '../widgets/headline.dart';
import '../widgets/promo_card.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //Top Bar
             const TopBar(),
              // PromoCard(),
             const PromoCard(),

              // New Row
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Image.asset('assets/images/news.png'),
                       const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'News',
                          style: small,
                        ),
                      const  SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'Join the Ocuupa BTC/USDT Trading challenge now',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: small,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //  Card List View(),
             const CardListView(),
                
                //HeadLine
            const  SHeadline(),
            const  Divider(
                thickness: 1,
              ),

              //Crypto Header
              Padding(
                padding:
                 const  EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Crypto',
                          style: header,
                        ),
                       const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Last Price',
                          style: header,
                        ),
                        Text(
                          'Change',
                          style: header,
                        ),
                      ],
                    ),
                  const  SizedBox(
                      height: 10,
                    ),

                    //CryptoList

                   CryptoList(
                      imagePath: 'assets/images/btc.png',
                      text: 'BTC',
                      subText: 'Bitcoin',
                      lastPrice: 40000,
                      change: ' -3.04% ',
                     boxColor: red,
                      textColor: smallPrice,
                    ),
              const SizedBox(height: 16),
                    CryptoList(
                      imagePath: 'assets/images/eth.png',
                      text: 'ETH',
                      subText: 'Ethereum',
                      lastPrice: 546,
                      change: ' -3.04% ',
                      boxColor: red,
                      textColor: smallPrice,
                    ),
                    const SizedBox(height: 16),
                    CryptoList(
                      imagePath: 'assets/images/usd.png',
                      text: 'USDT',
                      subText: 'Tether USDT',
                      lastPrice: 40000,
                      change: '+0.00% ',
                      boxColor: green,
                      textColor: smallPrice,
                    ),
                   const SizedBox(height: 16),
                    CryptoList(
                      imagePath: 'assets/images/okx.png',
                      text: 'OCU',
                      subText: 'Ocuupa Token',
                      lastPrice: 546,
                      change: '+25.04%',
                      boxColor: green,
                      textColor: smallPrice,
                    ),
                   const SizedBox(height: 16),
                    CryptoList(
                      imagePath: 'assets/images/ada.png',
                      text: 'ADA',
                      subText: 'Cardano',
                      lastPrice: 40000,
                      change: ' -3.04% ',
                      boxColor: red,
                      textColor: smallPrice,
                    ),
                   const SizedBox(height: 16),
                    CryptoList(
                      imagePath: 'assets/images/xrp.png',
                      text: 'XRP',
                      subText: 'Ripple',
                      lastPrice: 546,
                      change: ' -3.04% ',
                     boxColor: red,
                      textColor: smallPrice,
                    ),
                  ],
                ),
              ),
             const CustomButton(
                text: 'View More',
                width: 180,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                  text: "Home",
                  icon: Icons.home,
                  selected: _selectedIndex == 0,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  }),
              IconBottomBar(
                  text: "Trade",
                  icon: Icons.track_changes,
                  selected: _selectedIndex == 1,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  }),
              IconBottomBar(
                  text: "Save",
                  icon: Icons.save,
                  selected: _selectedIndex == 2,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  }),
              IconBottomBar(
                  text: "Games",
                  icon: Icons.games,
                  selected: _selectedIndex == 3,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  }),
              IconBottomBar(
                  text: "Wallet",
                  icon: Icons.watch,
                  selected: _selectedIndex == 4,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 4;
                    });
                  }),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
