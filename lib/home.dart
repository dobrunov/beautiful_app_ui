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
    return Scaffold(
      backgroundColor: const Color(0xff15161C),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(0, 'assets/images/Tabbar_Main.png'),
              _buildNavItem(1, 'assets/images/Tabbar_Inventory.png'),
              _buildNavItem(2, 'assets/images/Tabbar_Referral.png'),
              _buildNavItem(3, 'assets/images/Tabbar_Shop.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(int index, String imageLink) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),
        decoration: _selectedIndex == index ? backlight : null,
        child: Image.asset(
          imageLink,
          width: 34,
          height: 34,
          color: _selectedIndex == index ? Colors.white : const Color(0xff5E5E60),
        ),
      ),
    );
  }
}

const BoxDecoration backlight = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Colors.transparent,
      Color.fromRGBO(66, 68, 106, 0.2),
      Color.fromRGBO(66, 68, 106, 0.5),
      Color.fromRGBO(66, 68, 106, 0.7),
      Color.fromRGBO(66, 68, 106, 1.0),
      Color.fromRGBO(66, 68, 106, 0.7),
      Color.fromRGBO(66, 68, 106, 0.5),
      Color.fromRGBO(66, 68, 106, 0.2),
      Colors.transparent,
    ],
    stops: [0.0, 0.1, 0.2, 0.3, 0.5, 0.7, 0.8, 0.9, 1.0],
    begin: FractionalOffset(0.0, 0.5),
    end: FractionalOffset(1.0, 0.5),
  ),
);
