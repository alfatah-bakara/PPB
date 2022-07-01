import 'package:flutter/material.dart';
import 'package:percobaan3/detailproduct/home_detail.dart';
import 'dart:developer';
import 'Style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: HomeDetail(),
    );
  }
}

//void main() {
//runApp( MyApp());
//}

/*class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'mont'),
      home: CartPage(),
    );
  }
}*/

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  image: DecorationImage(
                    image: AssetImage("asset/images/hotelBig.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "TanakaWa Sushi",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Text(
                                  "69 Reviews",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                              size: 35,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "This sushi best for meet with family and work",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Your Cart",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 0.5,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    placeWidget("sushi", "Row Platter"),
                    SizedBox(
                      height: 5,
                    ),
                    placeWidget("suchi2", "Sushi Platter"),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total 3 items",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        Text(
                          "Rp.250.000,00",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tax",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        Text(
                          "Rp.20.000,00",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discounts",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        Text(
                          "Rp.35.000,000",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Payable",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        Text(
                          "Rp.210.000,00",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Have Promo Code?",
                      style: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: openSuccessPage,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: greenBtn,
                        ),
                        child: Text(
                          "Check Out",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Row placeWidget(String img, String name) {
  return Row(
    children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("asset/images/$img.png"))),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$name",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.orange,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.orange,
                ),
              ],
            ),
            Text(
              "Lorem ipsum sits dolar amet is for publishing",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Row(
        children: [
          Text(
            "Quantity ",
            style: TextStyle(fontSize: 14, color: black),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Text(
              "1",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    ],
  );
}

void openSuccessPage() {}
