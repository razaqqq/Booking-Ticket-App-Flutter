import 'package:booking_ticket_app/Utils/app_layout.dart';
import 'package:booking_ticket_app/Utils/app_style.dart';
import 'package:booking_ticket_app/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../widgets/layout_builder.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(173),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                  color: isColor==null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor==null ? Styles.HeadLineStyle3.copyWith(
                          color:Colors.white,
                        ) : Styles.HeadLineStyle3.copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      ThickContainer(isColor: true,),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: AppLayoutBuilder(sections: 6),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor==null ? Colors.white : Color(0xFF8ACCF7),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      const ThickContainer(isColor: false,),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style: isColor==null ? Styles.HeadLineStyle3.copyWith(
                          color: Colors.white,
                        ) : Styles.HeadLineStyle3.copyWith(color: Colors.black),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor==null ? Styles.HeadLineStyle4.copyWith(
                              color: Colors.white) : Styles.HeadLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style:
                            isColor==null ? Styles.HeadLineStyle4.copyWith(color: Colors.white)
                            : Styles.HeadLineStyle4
                        ,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor==null ? Styles.HeadLineStyle4.copyWith(
                              color: Colors.white) : Styles.HeadLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: isColor==null ? Styles.orangeColor : Colors.white, //const Color(0xFFF37B67),
              child: Row(
                children: [
                    SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getHeight(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (BuildContext, BoxConstraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (BoxConstraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      width: AppLayout.getWidth(5),
                                      height: AppLayout.getHeight(1),
                                      child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: isColor==null ? Colors.white : Colors.grey.shade300),
                                      ),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor==null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: isColor==null ? Radius.circular(AppLayout.getHeight(21)) : Radius.circular(AppLayout.getHeight(0)),
                  bottomRight: isColor==null ? Radius.circular(AppLayout.getHeight(21)) : Radius.circular(AppLayout.getHeight(0)),
                ),
              ),
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(16), right: AppLayout.getWidth(16), top: AppLayout.getHeight(16), bottom: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor==null ? Styles.HeadLineStyle3.copyWith(
                                color: Colors.white) : Styles.HeadLineStyle3.copyWith(color: Colors.black),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: isColor==null ? Styles.HeadLineStyle4.copyWith(
                                color: Colors.white) : Styles.HeadLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: isColor==null ? Styles.HeadLineStyle3.copyWith(
                                color: Colors.white) : Styles.HeadLineStyle3.copyWith(color: Colors.black),
                          ),
                          const Gap(5),
                          Text(
                            "Departure Time",
                            style: isColor==null ? Styles.HeadLineStyle4.copyWith(
                                color: Colors.white) : Styles.HeadLineStyle4,
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${ticket['number']}',
                            style: isColor==null ? Styles.HeadLineStyle3.copyWith(
                                color: Colors.white) : Styles.HeadLineStyle3.copyWith(color: Colors.black),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: isColor==null ? Styles.HeadLineStyle4.copyWith(
                                color: Colors.white) : Styles.HeadLineStyle4,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
