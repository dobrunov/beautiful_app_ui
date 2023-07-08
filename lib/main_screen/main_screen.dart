import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
                  Stack(
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
                                padding: const EdgeInsets.only(top: 66.0, bottom: 15),
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
                                  padding: const EdgeInsets.only(top: 66.0, bottom: 2),
                                  child: CircleAvatar(
                                    backgroundColor: const Color(0xff01B8FF),
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
                                    offset: const Offset(0, 16),
                                  ),
                                ],
                              ),
                              child: SvgPicture.asset('assets/images/Subtract.svg', semanticsLabel: 'Substract'))),
                    ],
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
                dashPattern: const [10, 6],
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
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    color: const Color.fromRGBO(29, 185, 221, 0.32),
                    strokeWidth: 2, //thickness of dash/dots
                    dashPattern: const [10, 6],
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
                    dashPattern: const [10, 6],
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
                    dashPattern: const [10, 6],
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
                    dashPattern: const [10, 6],
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
                      const Padding(
                        padding: EdgeInsets.only(right: 16.0),
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
                      const Padding(
                        padding: EdgeInsets.only(right: 16.0),
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
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(29, 185, 221, 1.00)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
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
