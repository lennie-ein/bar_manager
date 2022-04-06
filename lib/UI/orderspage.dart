import 'package:bar_manager/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ms_undraw/ms_undraw.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HypeColors.HypeBgBlue,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Text(
                "Orders",
                style: TextStyle(
                    color: HypeColors.HypeBronze,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontFamily: GoogleFonts.balooTamma().fontFamily),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 1 / 7),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Row(
                  children: [
                    UnDraw(
                      illustration: UnDrawIllustration.stock_prices,
                      color: HypeColors.HypeLightBlue,
                      height: 150,
                    ),
                    Text(
                      "Delivered Orders",
                      style: TextStyle(
                          fontFamily: GoogleFonts.balooTamma().fontFamily),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: HypeColors.HypeDeepSea,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 1 / 7),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Row(
                  children: [
                    UnDraw(
                      illustration: UnDrawIllustration.product_teardown,
                      color: HypeColors.HypeLightBlue,
                      height: 150,
                    ),
                    Text(
                      "Pending Orders",
                      style: TextStyle(
                          fontFamily: GoogleFonts.balooTamma().fontFamily),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: HypeColors.HypeDeepSea,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
