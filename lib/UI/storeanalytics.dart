import 'package:flutter/material.dart';

class StoreAnalyticsScreen extends StatefulWidget {
  const StoreAnalyticsScreen({Key? key}) : super(key: key);

  @override
  State<StoreAnalyticsScreen> createState() => _StoreAnalyticsScreenState();
}

class _StoreAnalyticsScreenState extends State<StoreAnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Store Analytics"),),
    );
  }
}
