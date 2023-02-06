
import 'package:booking_ticket_app/Utils/app_info_list.dart';
import 'package:booking_ticket_app/screens/ticket_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../Utils/app_layout.dart';
import '../Utils/app_style.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder.dart';
import '../widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      // A widget that positions its children relative to the edges of its box.
      //
      // This class is useful if you want to overlap several children in a
      // simple way, for example having some text and an image, overlaid with
      // a gradient and a button attached to the bottom.
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.HeadLineStyle,),
              Gap(AppLayout.getHeight(20)),
              TicketTabs(text1: "Upcoming", text2: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              SizedBox(height: 1,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(20),),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(text1: 'Flutter DB', text2: "Passenger", alignment: CrossAxisAlignment.start,),
                        ColumnLayout(text1: '5221 478566', text2: "Passport", alignment: CrossAxisAlignment.end,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilder(sections: 15, isColor: false, width: 5),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(text1: '92387498372 329', text2: "Number uf E-Tickets", alignment: CrossAxisAlignment.start,),
                        ColumnLayout(text1: 'BHSTJY', text2: "Booking Code", alignment: CrossAxisAlignment.end,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilder(sections: 15, isColor: false, width: 5),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png", scale: 11,),
                                Text(" *** 6666", style: Styles.HeadLineStyle3,)
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text("Paytment Method", style: Styles.HeadLineStyle4,)
                          ],
                        ),
                        ColumnLayout(text1: '\$989.9', text2: "Price", alignment: CrossAxisAlignment.end,),
                      ],
                    ),
                    SizedBox(height: 1,),
                    Gap(AppLayout.getHeight(20)),

                  ],
                ),

              ),
              /**
               * Barcode
               * **/
              SizedBox(height: 1,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))
                ),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getWidth(20)),

                // A widget that clips its child using a rectangle.
                // By default, ClipRect prevents its child from painting
                // outside its bounds, but the size and location of the clip
                // rect can be customized using a custom clipper.
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  // To Add Some Barcode in Our Flutter Project
                  child: BarcodeWidget(barcode: Barcode.code128(),
                    data: 'https://github.com/martinovovo',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,

                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getWidth(15)),
                child: TicketView(ticket: ticketList[0],),
              ),


            ],
          ),
          Positioned(
            left: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              // A circle that represents a user.
              // Typically used with a user's profile image, or, in the absence
              // of such an image, the user's initials. A given user's initials
              // should always be paired with the same background color,
              // for consistency.
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
