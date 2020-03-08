
import 'package:flutter/material.dart';
import 'package:flutter_quick_start/ui/shared/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

BoxDecoration fieldDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(8),
  color: Colors.white,
  boxShadow: <BoxShadow>[
    BoxShadow(
      color: Colors.black12,
      offset: Offset(1.1, 3),
      blurRadius: 10.0,
    ),
  ],
);

BoxDecoration underlineDecoration = BoxDecoration(
    border: Border(bottom: BorderSide(color: Colors.grey[600], width: 0.5)));

BoxDecoration disabledFieldDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(5), color: Colors.grey[100]);

// Field Variables

const double fieldHeight = 55;
const double smallFieldHeight = 40;
const double inputFieldBottomMargin = 30;
const double inputFieldSmallBottomMargin = 0;
const EdgeInsets fieldPadding = EdgeInsets.symmetric(horizontal: 15);
const EdgeInsets largeFieldPadding = EdgeInsets.symmetric(
  horizontal: 15,
  vertical: 15,
);

LinearGradient backgroundGradient = LinearGradient(
  colors: [
    Color(0xFF50232E),
    Color(0xFF6C3548),
    Color(0xFF813659),
    Color(0xFF7E3355),
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

// Text Style Variables
TextStyle bottomBarItemTextStyle = GoogleFonts.lato(
  textStyle: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
  ),
);

TextStyle appBarTitleTextStyle = GoogleFonts.lato(
  textStyle: TextStyle(
    color: titleColor,
    fontWeight: FontWeight.w700,
    fontSize: 20.0,
  ),
);

TextStyle buttonTextStyle = GoogleFonts.lato(
  color: Colors.white,
  fontWeight: FontWeight.w600,
  fontSize: 16.0,
);

TextStyle introTitleStyle = GoogleFonts.lato(
  color: titleColor,
  fontWeight: FontWeight.w700,
  fontSize: 22.0,
);

TextStyle introSubTitleStyle = GoogleFonts.lato(
  color: subTitleColor,
  fontWeight: FontWeight.w500,
  fontSize: 16.0,
);

TextStyle headingTitleStyle = GoogleFonts.lato(
  textStyle: TextStyle(
    color: titleColor,
    fontSize: 25.0,
    fontWeight: FontWeight.w500,
  ),
);

TextStyle headingSubTitleStyle = GoogleFonts.lato(
  textStyle: TextStyle(
    color: titleColor,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none,
    fontSize: 16.0,
  ),
);

TextStyle ratingTextStyle = GoogleFonts.lato(
  textStyle: TextStyle(
    color: primaryColor,
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
  ),
);

TextStyle ratingTitleStyle = GoogleFonts.lato(
  letterSpacing: 0.5,
  textStyle: TextStyle(
    color: titleColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  ),
);

TextStyle serviceTitleStyle = GoogleFonts.lato(
  letterSpacing: 0.5,
  textStyle: TextStyle(
    color: titleColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
  ),
);

TextStyle unselectedLabelStyle = GoogleFonts.lato(
  color: subTitleColor,
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
);

TextStyle labelStyle = GoogleFonts.lato(
  color: primaryColor,
  fontSize: 16.0,
  fontWeight: FontWeight.w500,
);

TextStyle dashboardOptionTextStyle = GoogleFonts.lato(
  color: titleColor,
  fontSize: 14.0,
  fontWeight: FontWeight.w600,
);

TextStyle stockMessageTitleStyle = GoogleFonts.lato(
  color: subTitleColor,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
);

TextStyle summaryLabelStyle = GoogleFonts.lato(
  fontWeight: FontWeight.w500,
  fontSize: 18.0,
  color: subTitleColor,
);

List<BoxShadow> boxShadows= <BoxShadow>[
  BoxShadow(
    color: Colors.black12,
    offset: Offset(1.0, 1.0),
    blurRadius: 5.0,
  )
];
