import 'package:flutter/material.dart';
import 'package:flutter_intro/constraints.dart';

class BottomBuyBtn extends StatelessWidget {
  const BottomBuyBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          // ignore: deprecated_member_use
          child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
            )),
            color: kPrimaryColor,
            onPressed: () {},
            child: Text(
              "Buy Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          // ignore: deprecated_member_use
          child: FlatButton(
            onPressed: () {},
            child: Text(
              "Description",
            ),
          ),
        ),
      ],
    );
  }
}
