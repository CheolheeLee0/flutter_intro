import 'package:flutter/material.dart';
import 'package:flutter_intro/constraints.dart';
import 'package:flutter_intro/screens/home/components/featured_plants.dart';
import 'package:flutter_intro/screens/home/components/header_with_searchbox.dart';
import 'package:flutter_intro/screens/home/components/recommend_plants.dart';
import 'package:flutter_intro/screens/home/components/title_with_more_btn.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 앱 화면 크기 알아내기
    Size size = MediaQuery.of(context).size;
    // small devices에서 스크롤 가능하게 함.
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // header with search box
          HeaderWithSearchBox(size: size),
          // Recommended, More btn
          TitleWithMoreBtn(
            text: "Recommended",
            press: () {},
          ),
          // 오른쪽으로 스크롤 이동
          RecommendsPlants(),
          TitleWithMoreBtn(
            text: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
