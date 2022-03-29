import 'package:bar_manager/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HypeColors.HypeBgBlue,
      bottomNavigationBar: FancyBottomNavigation(
        onTabChangedListener: (int position) {},
        tabs: [TabData(iconData: CupertinoIcons.graph_square, title: "Store Analytics"),
        TabData(iconData: CupertinoIcons.home, title: "Dashboard"),
        TabData(iconData: CupertinoIcons.cart, title: "Orders")],
        initialSelection: 1,
        circleColor: HypeColors.HypeBronze,
        inactiveIconColor: HypeColors.HypeBronze,
        barBackgroundColor: HypeColors.HypeFresia,
        textColor: HypeColors.HypeBronze,
      ),
    );
  }
}
