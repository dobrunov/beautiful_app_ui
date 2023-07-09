import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  final String avatar;

  const Header({
    super.key,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  height: MediaQuery.of(context).size.height * 0.27,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 66.0, bottom: 7),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                          child: Container(
                            width: 158,
                            height: 158,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(80),
                                border: Border.all(width: 1, color: Colors.white.withOpacity(0.2))),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: CircleAvatar(
                                backgroundColor: avatar.isNotEmpty ? Colors.transparent : const Color(0xff01B8FF),
                                radius: 50.0,
                                child: Image.asset(
                                  avatar.isNotEmpty ? avatar : 'images/Avatar_default.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 80.0,
                  right: 25.0,
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
    );
  }
}
