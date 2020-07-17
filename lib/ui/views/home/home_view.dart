import 'package:flutter/material.dart';
import 'package:flutter_quick_start/ui/shared/app_colors.dart';
import 'package:flutter_quick_start/ui/shared/box_style.dart';
import 'package:flutter_quick_start/ui/shared/ui_helper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 30.0,
            ),
            horizontalSpace(8.0),
            RichText(
              text: TextSpan(
                  text: "Corona",
                  style: GoogleFonts.nunitoSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0,
                  ),
                  children: [
                    TextSpan(
                      text: "Tracker",
                      style: GoogleFonts.nunitoSans(
                        color: Colors.red,
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                      ),
                    )
                  ]),
            )
          ],
        ),
        centerTitle: false,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: nMbox,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Lottie.asset(
                        "assets/images/live.json",
                        height: 24.0,
                      ),
                      horizontalSpace(4.0),
                      Text(
                        "LIVE",
                        style: GoogleFonts.nunitoSans(
                          fontSize: 14.0,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  verticalSpace(8.0),
                  Text(
                    "Stats Overview",
                    style: GoogleFonts.nunitoSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                  verticalSpace(8.0),
                  Container(
                    width: screenWidth(context),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    decoration: nMboxInvert,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: [
                            Icon(
                              Icons.language,
                              size: 20.0,
                            ),
                            horizontalSpace(8.0),
                            Text(
                              "Global",
                              style: GoogleFonts.nunitoSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 20.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            verticalSpaceMediumSmall,
            Container(
              width: screenWidth(context),
              padding: const EdgeInsets.all(16.0),
              decoration: nMboxColor(confirmCaseBg),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "1,874,590",
                    style: GoogleFonts.nunitoSans(
                      color: confirmTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    "Confirmed",
                    style: GoogleFonts.nunitoSans(
                      color: confirmTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0,
                    ),
                  )
                ],
              ),
            ),
            verticalSpaceMediumSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: nMboxColor(recoveredCaseBg),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "435,332",
                          style: GoogleFonts.nunitoSans(
                            color: recoveredTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 24.0,
                          ),
                        ),
                        Text(
                          "Recovered",
                          style: GoogleFonts.nunitoSans(
                            color: recoveredTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                horizontalSpace(16.0),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: nMboxColor(deathCaseBg),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "114,073",
                          style: GoogleFonts.nunitoSans(
                            color: deathTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 24.0,
                          ),
                        ),
                        Text(
                          "Deaths",
                          style: GoogleFonts.nunitoSans(
                            color: deathTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            verticalSpaceMediumSmall,
            verticalSpaceMediumSmall,
            Container(
              width: screenWidth(context),
              decoration: nMboxInvert,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0),
                decoration: nMboxInvert,
                child: Text(
                  "VERIFIED NEWS",
                  style: GoogleFonts.nunitoSans(
                    color: darkGreenTextColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            verticalSpaceMediumSmall,
//            Wrap(
//              alignment: WrapAlignment.start,
//              children: languageList.map((lang) => Container(child: ChoiceChip(
//                label: Row(
//                  mainAxisSize: MainAxisSize.min,
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: [
//                    Text(
//                      "English",
//                      textAlign: TextAlign.center,
//                      style: GoogleFonts.nunitoSans(
//                        color: darkGreenTextColor,
//                        fontWeight: FontWeight.w700,
//                        fontSize: 14.0,
//                      ),
//                    ),
//                    horizontalSpace(12.0),
//                    Icon(
//                      Icons.clear,
//                      color: darkGreenTextColor,
//                      size: 16.0,
//                    )
//                  ],
//                ),
//                selected: true,
//                backgroundColor: Colors.white,
//                disabledColor: Colors.white,
//                selectedColor: Colors.white,
//                shape: RoundedRectangleBorder(
//                  side: BorderSide(color: darkGreenTextColor, width: 1.0),
//                  borderRadius: BorderRadius.circular(16.0),
//                ),
//                onSelected: (value) {},
//              ),margin: const EdgeInsets.only(right: 8.0),)).toList(),
//            )
            Container(
              decoration: nMbox,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: nMboxInvert,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        "https://cna-sg-res.cloudinary.com/image/upload/q_auto,f_auto/image/12636360/16x9/991/557/e0454c4aacb9465d60ea4b798d4cefac/oo/the-video-of-andrea-bocelli-performing-a-solo-easter-concert-from-an-empty-cathedral-in-milan-has-been-viewed-millions-of-times-1586748056089-2.jpg",
                        height: 90.0,
                        width: 80.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  horizontalSpace(8.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Millions watch Andrea Bocelli sing in empty Milan cathedral amid COVID-19 lockdown - CNA",
                          maxLines: 1,
                          style: GoogleFonts.nunitoSans(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0),
                        ),
                        verticalSpace(4.0),
                        Text(
                          "Italian tenor Andrea Bocelli performed a solo Easter concert from an empty Milan Cathedral streamed live to millions of people around the world in coronavirus lockdown.",
                          maxLines: 3,
                          style: GoogleFonts.nunitoSans(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 12.0),
                        ),
                        verticalSpace(2.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "5 hours ago",
                              style: GoogleFonts.nunitoSans(
                                color: Colors.blueAccent,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
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
