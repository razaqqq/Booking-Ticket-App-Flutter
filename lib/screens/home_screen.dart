import 'dart:ui';

import 'package:booking_ticket_app/Utils/app_style.dart';
import 'package:booking_ticket_app/screens/ticket_view.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../Utils/app_info_list.dart';
import '../widgets/double_text_widget.dart';
import 'hotels_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // scaffold : this class is widget that countain  AppBar, Background, Body
    // and etc
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.HeadLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Book Ticket",
                          style: Styles.HeadLineStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/bikini_02.jpg"),
                          )),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Gap(5),
                      Text(
                        "Search",
                        style: Styles.HeadLineStyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.HeadLineStyle2,
                    ),
                    // The InkWell class is a rectangular area of a Material
                    // widget that responds to touch events by displaying a
                    // clipped splash. The Material widget is responsible for
                    // the ink effects that are displayed when a touch event
                    // occurs. The Material refers to the area where the ink
                    // reactions are painted.
                    InkWell(
                      onTap: () {
                        print("You Are Tapped");
                      },
                      child: Text(
                        "View All",
                        style: Styles.textStyle
                            .copyWith(color: Styles.prymaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(15),
          // A box in which a single widget can be scrolled.
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Row(
              children: ticketList.map((ticket) => TicketView(ticket: ticket,)).toList(),
            ),
          ),
          const Gap(15),
          const DoubleTextWidget(bigText: "Hotel", smallText: "View All", number: 20),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
