import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/constants.dart';

class StoreAnalyticsScreen extends StatefulWidget {
  const StoreAnalyticsScreen({Key? key}) : super(key: key);

  @override
  State<StoreAnalyticsScreen> createState() => _StoreAnalyticsScreenState();
}

class _StoreAnalyticsScreenState extends State<StoreAnalyticsScreen>
    with TickerProviderStateMixin {
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
                "Store Analytics",
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
                decoration: BoxDecoration(
                    color: HypeColors.HypeDeepSea,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
