import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/app_layout.dart';
import '../Utils/app_style.dart';

class DoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  final double number;
  const DoubleTextWidget({Key? key, required this.bigText, required this.smallText, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(number)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: Styles.HeadLineStyle2,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              smallText,
              style: Styles.HeadLineStyle3,
            ),
          )
        ],
      ),
    );
  }
}
