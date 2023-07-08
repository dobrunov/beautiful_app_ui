import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff14161C),
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
        padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
        decoration: _selectedIndex == index ? backlight : null,
        child: Image.asset(
          imageLink,
          width: 34,
          height: 34,
          color: _selectedIndex == index ? Colors.white : Color(0xff5E5E60),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff14161C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 227,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/images/Banner.png',
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.25,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 66.0, bottom: 15),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(80),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                                      child: Container(
                                        width: 150,
                                        height: 150,
                                        decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.05),
                                            borderRadius: BorderRadius.circular(80),
                                            border: Border.all(width: 1, color: Colors.white.withOpacity(0.2))),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9.0,
                                  top: 7.0,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 66.0, bottom: 2),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xff01B8FF),
                                      radius: 66.0,
                                      child: SvgPicture.asset('assets/images/OWLsgk.svg', semanticsLabel: 'Man'),
                                    ),
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 80.0,
                            right: 20.0,
                            child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 3,
                                      blurRadius: 12,
                                      offset: Offset(0, 16),
                                    ),
                                  ],
                                ),
                                child: SvgPicture.asset('assets/images/Subtract.svg', semanticsLabel: 'Substract'))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                'Hello, superman@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    'assets/images/ic_coin.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 16.0),
                  child: Text(
                    '00.0000',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                color: const Color.fromRGBO(29, 185, 221, 0.32),
                strokeWidth: 2, //thickness of dash/dots
                dashPattern: [10, 6],
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 0, 0, 0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Color.fromRGBO(29, 185, 221, 1.00),
                    size: 32,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    color: const Color.fromRGBO(29, 185, 221, 0.32),
                    strokeWidth: 2, //thickness of dash/dots
                    dashPattern: [10, 6],
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 0, 0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Color.fromRGBO(29, 185, 221, 1.0),
                        size: 32,
                      ),
                    ),
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    color: const Color.fromRGBO(29, 185, 221, 0.32),
                    strokeWidth: 2, //thickness of dash/dots
                    dashPattern: [10, 6],
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 0, 0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Color.fromRGBO(29, 185, 221, 1.00),
                        size: 32,
                      ),
                    ),
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    color: const Color.fromRGBO(29, 185, 221, 0.32),
                    strokeWidth: 2, //thickness of dash/dots
                    dashPattern: [10, 6],
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 0, 0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Color.fromRGBO(29, 185, 221, 1.00),
                        size: 32,
                      ),
                    ),
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    color: const Color.fromRGBO(29, 185, 221, 0.32),
                    strokeWidth: 2, //thickness of dash/dots
                    dashPattern: [10, 6],
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.width * 0.15,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 0, 0, 0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Color.fromRGBO(29, 185, 221, 1.00),
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 0, 0, 0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: SvgPicture.asset('assets/images/Durability.svg', semanticsLabel: 'Durability'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          '0.00 K / 50K',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            // fontFamily: 'Avenir',
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 0, 0, 0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: SvgPicture.asset('assets/images/Power.svg', semanticsLabel: 'Power'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Text(
                          '0.0 / 0.0',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            // fontFamily: 'Avenir',
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            // START BUTTON
            Padding(
              padding: const EdgeInsets.only(top: 35.0, bottom: 15.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.15,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shadowColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(29, 185, 221, 1.00)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Start',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      // fontFamily: 'Avenir',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Search Screen'),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favorites Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
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
