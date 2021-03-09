import 'package:flutter/material.dart';
import 'package:flutter_intro/constraints.dart';
import 'package:flutter_intro/screens/details/components/bottom_buy_btn.dart';
import 'package:flutter_intro/screens/details/components/icon_card.dart';
import 'package:flutter_intro/screens/details/components/image_and_icons.dart';
import 'package:flutter_intro/screens/details/components/title_and_price.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageAndIcons(),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          BottomBuyBtn(),
        ],
      ),
    );
  }
}
