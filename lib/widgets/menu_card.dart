import 'package:flutter/material.dart';
import 'package:percobaan3/detailproduct/detail_product.dart';
import 'package:percobaan3/theme.dart';
import 'package:percobaan3/models/menu.dart';

class MenuCard extends StatelessWidget {
  final Menu menu;
  const MenuCard(this.menu, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailProduct()));
      },
      child: Container(
        child: Row(
          children: [
            Image.asset(
              menu.image,
              width: 130,
              height: 110,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                menu.isPromo
                    ? Image.asset(
                        'assets/promo.png',
                        width: 47,
                        height: 16,
                      )
                    : Image.asset(
                        'assets/terlaris.png',
                        width: 47,
                        height: 16,
                      ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  '${menu.name}',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      'Rp ${menu.price}',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: greyColor,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '  Rp ${menu.price}',
                      style: poppinsTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Gratis Diantar',
                  style: poppinsTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: greyColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
