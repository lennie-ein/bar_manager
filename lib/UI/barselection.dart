import 'package:bar_manager/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ms_undraw/illustrations.g.dart';
import 'package:ms_undraw/ms_undraw.dart';

import 'dashboard.dart';

class BarSelectionScreen extends StatefulWidget {
  const BarSelectionScreen({Key? key}) : super(key: key);

  @override
  State<BarSelectionScreen> createState() => _BarSelectionScreenState();
}

class _BarSelectionScreenState extends State<BarSelectionScreen> {
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
                "Stations",
                style: TextStyle(
                    color: HypeColors.HypeBronze,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontFamily: GoogleFonts.balooTamma().fontFamily),
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45.0, top: 15),
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 150,
                          height: 150,
                          child: UnDraw(
                              illustration: UnDrawIllustration.beer,
                              color: HypeColors.HypeLightBlue),
                          decoration: BoxDecoration(
                              color: HypeColors.HypeDeepSea,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 5.0,
                                  blurRadius: 10.0,
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius:
                              const BorderRadius.all(Radius.circular(15.0))),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DashboardScreen()),
                          );
                        },
                      ),
                       Padding(
                        padding: EdgeInsets.only( top: 8.0),
                        child: Text("BAR 1",style: TextStyle(fontFamily: GoogleFonts.balooTamma().fontFamily)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0, top: 15),
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 150,
                          height: 150,
                          child: UnDraw(
                              illustration: UnDrawIllustration.beer,
                              color: HypeColors.HypeLightBlue),
                          decoration: BoxDecoration(
                              color: HypeColors.HypeDeepSea,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 5.0,
                                  blurRadius: 7.0,
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius:
                              const BorderRadius.all(Radius.circular(15.0))),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DashboardScreen()),
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child:  Text("BAR 2", style: TextStyle(fontFamily: GoogleFonts.balooTamma().fontFamily),),
                      )
                    ],
                  ),

                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
