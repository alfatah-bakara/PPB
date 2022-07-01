import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percobaan3/theme.dart';
import 'package:percobaan3/models/menu.dart';
import 'package:percobaan3/widgets/menu_card.dart';

class HomeDetail extends StatelessWidget {
  //cost name ({Key? key}) :super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Seblak Buahbatu ',
                style: poppinsTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: blackColor,
                ),
              ),
              Text(
                'Selamat Datang di gojek',
                style: poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: greyColor,
                ),
              ),
              Text(
                'Recomended Menu',
                style: poppinsTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: blackColor,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              MenuCard(
                Menu(
                  id: 1,
                  image: 'assets/pic1.png',
                  name: 'Seblak Campur',
                  price: 12000,
                  pricePromo: 8000,
                  note: '...',
                  isPromo: true,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              MenuCard(
                Menu(
                  id: 2,
                  image: 'assets/pic2.png',
                  name: 'Seblak Setan',
                  price: 28000,
                  pricePromo: 22000,
                  note: '...',
                  isPromo: false,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              MenuCard(
                Menu(
                  id: 2,
                  image: 'assets/pic3.png',
                  name: 'Seblak Jeletet.',
                  price: 28000,
                  pricePromo: 22000,
                  note: '...',
                  isPromo: false,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              MenuCard(
                Menu(
                  id: 2,
                  image: 'assets/pic4.png',
                  name: 'Seblak Ceker',
                  price: 28000,
                  pricePromo: 22000,
                  note: '...',
                  isPromo: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
