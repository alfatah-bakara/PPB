import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percobaan3/theme.dart';
import 'package:percobaan3/models/size.dart';
import 'package:percobaan3/widgets/size_card.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({Key? key}) : super(key: key);

  @override
  State<DetailProduct> createState() => _DetailProduct();
}

class _DetailProduct extends State<DetailProduct> {
  launchUrl(String url) async {
    launch(url);
  }

  int i = 1;

  int dataPrice = 28000;
  int dataPricePromo = 22000;

  int price = 28000;
  int pricePromo = 22000;

  bool isMini = true;
  bool isSedang = false;
  bool isBesar = false;
  bool isSuperBesar = false;

  void _minus() {
    setState(() {
      if (i > 1) {
        i--;
        if (isMini == true) {
          price = dataPrice * i;
          pricePromo = dataPricePromo * i;
        } else if (isSedang == true) {
          price = (dataPrice + 2000) * i;
          pricePromo = (dataPricePromo + 2000) * i;
        } else if (isBesar == true) {
          price = (dataPrice + 4000) * i;
          pricePromo = (dataPricePromo + 4000) * i;
        } else if (isSuperBesar == true) {
          price = (dataPrice + 6000) * i;
          pricePromo = (dataPricePromo + 6000) * i;
        }
      }
    });
  }

  void _clickMini() {
    setState(() {
      price = dataPrice * i;
      pricePromo = dataPricePromo * i;

      isMini = true;
      isSedang = false;
      isBesar = false;
      isSuperBesar = false;
    });
  }

  void _clickSedang() {
    setState(() {
      price = (dataPrice + 2000) * i;
      pricePromo = (dataPricePromo + 2000) * i;
      isMini = false;
      isSedang = true;
      isBesar = false;
      isSuperBesar = false;
    });
  }

  void _clickBesar() {
    setState(() {
      price = (dataPrice + 4000) * i;
      pricePromo = (dataPricePromo + 4000) * i;
      isMini = false;
      isSedang = false;
      isBesar = true;
      isSuperBesar = false;
    });
  }

  void _clickSuperBesar() {
    setState(() {
      price = (dataPrice + 6000) * i;
      pricePromo = (dataPricePromo + 6000) * i;
      isMini = false;
      isSedang = false;
      isBesar = false;
      isSuperBesar = true;
    });
  }

  void _plus() {
    setState(() {
      i++;

      if (isMini == true) {
        price = dataPrice * i;
        pricePromo = dataPricePromo * i;
      } else if (isSedang == true) {
        price = (dataPrice + 2000) * i;
        pricePromo = (dataPricePromo + 2000) * i;
      } else if (isBesar == true) {
        price = (dataPrice + 4000) * i;
        pricePromo = (dataPricePromo + 4000) * i;
      } else if (isSuperBesar == true) {
        price = (dataPrice + 6000) * i;
        pricePromo = (dataPricePromo + 6000) * i;
      }
    });
  }

//class DetailProduct extends StatelessWidget {
  //cost name ({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/btn_back.png', width: 40),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Image.asset('assets/btn_share.png', width: 40),
                  ),
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(height: 264),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/promo.png',
                              width: 60,
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  'Seblak Regular ',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor,
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: _minus,
                                  child: Image.asset(
                                    'assets/minus.png',
                                    width: 34,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Text(
                                  '$i',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: blackColor,
                                  ),
                                ),
                                SizedBox(width: 16),
                                InkWell(
                                  onTap: _plus,
                                  child: Image.asset(
                                    'assets/plus.png',
                                    width: 34,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp ',
                                          decimalDigits: 0)
                                      .format(price),
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: greyColor,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: 'Rp ',
                                          decimalDigits: 0)
                                      .format(pricePromo),
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: greenColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 18),
                            Text(
                              'Level Pedas',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackColor,
                              ),
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                InkWell(
                                  onTap: _clickMini,
                                  child: SizeCard(
                                    Size(
                                      id: 1,
                                      name: 'Biasa',
                                      isActive: isMini,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                InkWell(
                                  onTap: _clickSedang,
                                  child: SizeCard(
                                    Size(
                                      id: 2,
                                      name: 'Sedang',
                                      isActive: isSedang,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                InkWell(
                                  onTap: _clickBesar,
                                  child: SizeCard(
                                    Size(
                                      id: 3,
                                      name: 'Pedas',
                                      isActive: isBesar,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                InkWell(
                                  onTap: _clickSuperBesar,
                                  child: SizeCard(
                                    Size(
                                      id: 4,
                                      name: 'Pedas ++',
                                      isActive: isSuperBesar,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 18),
                            Text(
                              'Catatan Penjual',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackColor,
                              ),
                            ),
                            SizedBox(height: 12),
                            // ignore: sized_box_for_whitespace
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Text(
                                'Silahkan Memilih ukuran porsi seblak Pedasnya',
                                style: poppinsTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: greyColor,
                                ),
                              ),
                            ),
                            SizedBox(height: 18),
                            Text(
                              'Lokasi ',
                              style: poppinsTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: blackColor,
                              ),
                            ),
                            SizedBox(height: 12),
                            InkWell(
                              onTap: () {
                                launchUrl(
                                    'https://www.google.com/maps/place/Seblak+Kemed+(Food+Court+Griya)/@-6.9504245,107.6159797,14z/data=!4m16!1m9!2m8!1sRestaurants+seblak+buahbatu!3m6!1sRestaurants+seblak+buahbatu!2sPasar+Mayong!3s0x2e70dddd3b123fc9:0xf742f6e4331e7c28!4m2!1d110.7585118!2d-6.7495268!3m5!1s0x2e68e8639a4d321b:0x2d7eff2bd1025c48!8m2!3d-6.9411702!4d107.6270316!15sChtSZXN0YXVyYW50cyBzZWJsYWsgYnVhaGJhdHVaHSIbcmVzdGF1cmFudHMgc2VibGFrIGJ1YWhiYXR1kgERc2VibGFrX3Jlc3RhdXJhbnSaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVUXdkSFpoV0d0blJSQUI');
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/store.png',
                                    width: 50,
                                  ),
                                  SizedBox(width: 18),
                                  Text(
                                    'Jl.Buah Batu, Bojongsoang \nBandung',
                                    style: poppinsTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: greyColor,
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.chevron_right,
                                      color: greyColor,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 40),
                            // ignore: sized_box_for_whitespace

                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: RaisedButton(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  bottom: 12,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                elevation: 0,
                                onPressed: () {},
                                color: greenColor,
                                child: Text(
                                  'Beli',
                                  style: poppinsTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
