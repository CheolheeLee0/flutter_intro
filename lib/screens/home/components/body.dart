import 'package:flutter/material.dart';
import 'package:flutter_intro/constraints.dart';
import 'package:flutter_intro/screens/home/components/header_with_searchbox.dart';
import 'package:flutter_intro/screens/home/components/recommend_plant_card.dart';
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
          SingleChildScrollView(
            // 수평 방향으로
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // Images container,
                RecommendPlantCard(
                  image: "assets/images/image_1.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                  press: () {},
                ),
                RecommendPlantCard(
                  image: "assets/images/image_2.png",
                  title: "Angelica",
                  country: "Russia",
                  price: 440,
                ),
                RecommendPlantCard(
                  image: "assets/images/image_3.png",
                  title: "Samantha",
                  country: "Russia",
                  price: 440,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
