import 'package:flutter/material.dart';
import 'package:flutter_intro/constraints.dart';
import 'package:flutter_intro/screens/details/components/icon_card.dart';
import 'package:flutter_svg/svg.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.7,
        child: Row(
          children: [
            // 버튼
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset(
                          "assets/icons/back_arrow.svg",
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    // 네모 버튼
                    IconCard(icon: "assets/icons/sun.svg"),
                    IconCard(icon: "assets/icons/icon_2.svg"),
                    IconCard(icon: "assets/icons/icon_3.svg"),
                    IconCard(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
            // 그림
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(63),
                  topLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
