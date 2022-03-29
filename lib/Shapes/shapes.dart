// import 'dart:ui' as ui;
//
// import 'package:flutter/cupertino.dart';
//
// //Add this CustomPaint widget to the Widget Tree
// CustomPaint(
// size: Size(80, (WIDTH*1).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
// painter: RPSCustomPainter(),
// )
//
// //Copy this CustomPainter code to the Bottom of the File
// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//
//     Path path_0 = Path();
//     path_0.moveTo(size.width*0.2200000,size.height*-0.2700000);
//     path_0.cubicTo(size.width*0.2710000,size.height*-0.2190000,size.width*0.2890000,size.height*-0.1370000,size.width*0.3050000,size.height*-0.05300000);
//     path_0.cubicTo(size.width*0.3200000,size.height*0.03000000,size.width*0.3330000,size.height*0.1150000,size.width*0.3030000,size.height*0.1830000);
//     path_0.cubicTo(size.width*0.2740000,size.height*0.2520000,size.width*0.2020000,size.height*0.3040000,size.width*0.1160000,size.height*0.3470000);
//     path_0.cubicTo(size.width*0.03100000,size.height*0.3910000,size.width*-0.06800000,size.height*0.4250000,size.width*-0.1550000,size.height*0.4030000);
//     path_0.cubicTo(size.width*-0.2410000,size.height*0.3810000,size.width*-0.3140000,size.height*0.3030000,size.width*-0.3680000,size.height*0.2120000);
//     path_0.cubicTo(size.width*-0.4220000,size.height*0.1210000,size.width*-0.4560000,size.height*0.01700000,size.width*-0.4270000,size.height*-0.06300000);
//     path_0.cubicTo(size.width*-0.3990000,size.height*-0.1440000,size.width*-0.3080000,size.height*-0.2010000,size.width*-0.2260000,size.height*-0.2470000);
//     path_0.cubicTo(size.width*-0.1450000,size.height*-0.2920000,size.width*-0.07200000,size.height*-0.3250000,size.width*0.006000000,size.height*-0.3320000);
//     path_0.cubicTo(size.width*0.08400000,size.height*-0.3390000,size.width*0.1690000,size.height*-0.3200000,size.width*0.2200000,size.height*-0.2700000);
//     path_0.close();
//
//     Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
//     paint_0_fill.shader = ui.Gradient.linear(Offset(0,size.height*0.01000000), Offset(size.width*0.01000000,0), [Colors.rgba(248, 117, 55, 1).withOpacity(1),Colors.rgba(251, 168, 31, 1).withOpacity(1)], [0,1]);
//     canvas.drawPath(path_0,paint_0_fill);
//
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }