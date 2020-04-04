
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
    color: black,
    fontWeight: FontWeight.w700,
    fontSize: 20.0,
  ),
);

final errorTitleStyle = GoogleFonts.lato(
  fontWeight: FontWeight.w700,
  color: black,
  fontSize: 16.0
);

final errorMessageStyle = GoogleFonts.lato(
    fontWeight: FontWeight.w400,
    color: blueGrey,
    fontSize: 16.0
);

final errorButtonStyle = GoogleFonts.lato(
  fontSize: 15.0,
  color: blueGrey,
  fontWeight: FontWeight.w700
);

final buttonTextStyle = GoogleFonts.lato(
  fontWeight: FontWeight.w700,
  color: blueGrey,
  fontSize: 15.0
);

final buttonWhiteTextStyle = GoogleFonts.lato(
    fontWeight: FontWeight.w700,
    color: white,
    fontSize: 15.0
);
List<BoxShadow> boxShadows= <BoxShadow>[
  BoxShadow(
    color: Colors.black12,
    offset: Offset(1.0, 1.0),
    blurRadius: 5.0,
  )
];
