import 'package:flutter/material.dart';

import 'package:run_app_ui/referral_screen/referral_screen.dart';
import 'package:run_app_ui/shop_screen/shop_screen.dart';
import 'inventory_screen/inventory_screen.dart';
import 'main_screen/main_screen.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MainScreen(),
    const InventoryScreen(),
    const ReferralScreen(),
    const ShopScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var barWidth = scrWidth * 0.9;
    var backlightWidth = 120;
    var barPadding = scrWidth * 0.05;
    print(scrWidth);
    return Scaffold(
      backgroundColor: const Color(0xff15161C),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(barPadding),
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.5),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35.0),
              topRight: Radius.circular(35.0),
              bottomLeft: Radius.circular(35.0),
              bottomRight: Radius.circular(35.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.005),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, -1),
              ),
            ],
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.zero,
                child: _buildNavItem(0, 'assets/images/Tabbar_Main.png', backlightWidth),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: (barWidth * 0.375) - (backlightWidth / 2),
                ),
                child: _buildNavItem(1, 'assets/images/Tabbar_Inventory.png', backlightWidth),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: (barWidth * 0.625) - (backlightWidth / 2),
                ),
                child: _buildNavItem(2, 'assets/images/Tabbar_Referral.png', backlightWidth),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: (barWidth * 0.85) - (backlightWidth / 2),
                ),
                child: _buildNavItem(3, 'assets/images/Tabbar_Shop.png', backlightWidth),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String imageLink, backlightWidth) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Stack(children: [
        Container(
          width: backlightWidth,
          height: 65,
          decoration: _selectedIndex == index ? backlight : null,
          child: Padding(
            padding: EdgeInsets.zero,
            child: Image.asset(
              imageLink,
              width: 34,
              height: 34,
              color: _selectedIndex == index ? Colors.white : const Color(0xff5E5E60),
            ),
          ),
        ),
      ]),
    );
  }
}

const BoxDecoration backlight = BoxDecoration(
  borderRadius: borderRadius,
  gradient: LinearGradient(
    colors: [
      Colors.transparent,
      Color.fromRGBO(66, 68, 106, 0.1),
      Color.fromRGBO(66, 68, 106, 0.2),
      Color.fromRGBO(66, 68, 106, 0.4),
      Color.fromRGBO(66, 68, 106, 0.7),
      Color.fromRGBO(66, 68, 106, 1.0),
      Color.fromRGBO(66, 68, 106, 0.7),
      Color.fromRGBO(66, 68, 106, 0.4),
      Color.fromRGBO(66, 68, 106, 0.2),
      Color.fromRGBO(66, 68, 106, 0.1),
      Colors.transparent,
    ],
    stops: [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0],
    begin: FractionalOffset(0.0, 0.5),
    end: FractionalOffset(1.0, 0.5),
  ),
);

const BorderRadius borderRadius = BorderRadius.only(
  topLeft: Radius.circular(35.0),
  topRight: Radius.circular(35.0),
  bottomLeft: Radius.circular(35.0),
  bottomRight: Radius.circular(35.0),
);
