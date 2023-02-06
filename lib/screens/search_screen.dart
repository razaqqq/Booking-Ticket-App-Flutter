import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../Utils/app_layout.dart';
import '../Utils/app_style.dart';
import '../widgets/double_text_widget.dart';
import '../widgets/icon_text_widget.dart';
import '../widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What Are\n You Looking For ?",
            style:
                Styles.HeadLineStyle.copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          TicketTabs(text1: "Asu", text2: "Anjing"),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            height: AppLayout.getHeight(60),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                color: const Color(0xD91130CE)),
            child: Center(
              child: Text(
                "Find Ticket",
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          const DoubleTextWidget(
              bigText: "Upcoming Flight", smallText: "View All", number: 0),
          Gap(AppLayout.getHeight(25)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                padding: EdgeInsets.all(AppLayout.getHeight(10)),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ],
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(12)),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/bikini_06.jpg"),
                            ))),
                    Gap(AppLayout.getHeight(10)),
                    Text(
                      "20% Discount on the Early Booking of this Flight, Dont't Miss Out the Chance",
                      style: Styles.HeadLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(174),
                        padding: EdgeInsets.all(AppLayout.getHeight(15)),
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10)),
                          color: Color(0xFF3AB8B8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount \nfor Survey",
                              style: Styles.HeadLineStyle2.copyWith(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Text The Survey \nAbout Our \nServices and \nget a Discount",
                              style: Styles.textStyle.copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      // A widget that controls where a child of a Stack is
                      // positioned.
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: Color(0xFF189999)),

                        ),
                      )
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(AppLayout.getHeight(15))),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.all(AppLayout.getHeight(10)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xFFEC6545)
                    ),
                    child: Column(
                      children: [
                        Text("Take Love", style: Styles.HeadLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(15)),
                        // The RichText widget displays text that uses multiple
                        // different styles. The text to display is described
                        // using a tree of TextSpan objects, each of which has
                        // an associated style that is used for that subtree.
                        // The text might break across multiple lines or might
                        // all be displayed on the same line depending on the
                        // layout constraints.
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😂',
                                style: TextStyle(fontSize: 30)
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 45)
                              ),
                              TextSpan(
                                text: '🤣',
                                style: TextStyle(fontSize: 30)
                              )

                            ]
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
