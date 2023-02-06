import 'package:booking_ticket_app/Utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../Utils/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: AppLayout.getHeight(86),
              width: AppLayout.getHeight(86),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                image: const DecorationImage(
                  image: AssetImage("assets/images/logo_image.png"),
                ),
              ),
            ),
            Gap(AppLayout.getWidth(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Book Tickets",
                  style: Styles.HeadLineStyle,
                ),
                Gap(AppLayout.getHeight(2)),
                Text(
                  "New-York",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500),
                ),
                Gap(AppLayout.getHeight(5)),
                Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(5)),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEF4F3),
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(100)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(3)),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFF526799)),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Gap(AppLayout.getWidth(5)),
                      Text(
                        "Premium Status",
                        style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Spacer(),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    print("Asolole");
                  },
                  child: Text(
                    "Edit",
                    style: Styles.textStyle.copyWith(
                        color: Styles.prymaryColor,
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
          ]),
          Gap(AppLayout.getHeight(8)),
          // A thin horizontal line, with padding on either side.
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.prymaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 18, color: Color(0xFF264CD2))),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25), vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.prymaryColor,
                        size: 27,
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\' got New Award",
                          style: Styles.HeadLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "You Have 95 Flight in Year",
                          style: Styles.HeadLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
