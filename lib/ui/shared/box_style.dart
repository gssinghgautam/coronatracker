import 'package:flutter/material.dart';
import 'package:flutter_quick_start/ui/shared/app_colors.dart';

Color mC = Colors.grey.shade100;
Color mCL = Colors.white;
Color mCD = Colors.black.withOpacity(0.075);
Color mCC = Colors.green.withOpacity(0.65);
Color fCD = Colors.grey.shade700;
Color fCL = Colors.grey;

BoxDecoration nMbox = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mC,
    boxShadow: [
      BoxShadow(
        color: mCD,
        offset: Offset(10, 10),
        blurRadius: 10,
      ),
      BoxShadow(
        color: mCL,
        offset: Offset(-10, -10),
        blurRadius: 10,
      ),
    ]
);

BoxDecoration nMboxColor(Color bgColor) => BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: bgColor,
    boxShadow: [
      BoxShadow(
        color: mCD,
        offset: Offset(10, 10),
        blurRadius: 10,
      ),
      BoxShadow(
        color: mCL,
        offset: Offset(-10, -10),
        blurRadius: 10,
      ),
    ]
);

BoxDecoration nMboxInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mCD,
    boxShadow: [
      BoxShadow(
          color: mCL,
          offset: Offset(3, 3),
          blurRadius: 3,
          spreadRadius: -3
      ),
    ]
);

BoxDecoration nMboxColoredInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: confirmCaseBg,
    boxShadow: [
      BoxShadow(
          color: mCL,
          offset: Offset(3, 3),
          blurRadius: 3,
          spreadRadius: -3
      ),
    ]
);

BoxDecoration nMboxInvertActive = nMboxInvert.copyWith(color: mCC);

BoxDecoration nMbtn = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: mC,
    boxShadow: [
      BoxShadow(
        color: mCD,
        offset: Offset(2, 2),
        blurRadius: 2,
      )
    ]
);