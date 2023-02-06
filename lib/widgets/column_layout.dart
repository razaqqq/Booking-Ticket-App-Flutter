import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Utils/app_layout.dart';
import '../Utils/app_style.dart';

class ColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String text1;
  final String text2;
  const ColumnLayout({Key? key, required this.text1, required this.text2, required this.alignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(text1, style: Styles.HeadLineStyle3.copyWith(color: Colors.black),),
        Gap(AppLayout.getHeight(5)),
        Text(text2, style: Styles.HeadLineStyle4)
      ],
    );
  }
}
