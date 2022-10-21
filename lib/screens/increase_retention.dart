import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:landing_page/reusedWidgets/dynamic_row.dart';
import 'package:google_fonts/google_fonts.dart';

class IncreaseRetentionView extends StatelessWidget {
  const IncreaseRetentionView({super.key});

  double getMainTextWidth(width) {
    if (width > 1025) {
      return width * 0.4;
    } else {
      return width * 0.9;
    }
  }

  double getSideTextWidth(width) {
    if (width > 1025) {
      return width * 0.4;
    } else {
      return width * 0.8;
    }
  }

  String getMainText(width) {
    if (width < 770) {
      return 'Increase employee retention using\nreal-time data to create meaningful\nconnections\nand opportunities for employees to\nengage.';
    } else if (width < 1025) {
      return 'Increase employee retention using\nreal-time data to create meaningful connections\nand opportunities for employees to engage.';
    } else {
      return 'Increase employee\nretention using\nreal-time data to create\nmeaningful connections\nand opportunities for\nemployees to engage.';
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
        color: const Color.fromRGBO(255, 251, 245, 1),
        child: Column(children: [
          SizedBox(height: width * 0.025),
          DynamicRow(children: [
            SizedBox(
                width: getMainTextWidth(width),
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(getMainText(width),
                        textAlign: TextAlign.left,
                        style: GoogleFonts.sumana(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(200, 162, 135, 1),
                            fontSize: 45,
                            height: 1.25)))),
            SizedBox(
                width: getSideTextWidth(width),
                child: Column(
                  children: [
                    SizedBox(height: getSideTextWidth(width) * 0.1),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("images/employeeSupport.png",
                            width: getSideTextWidth(width) * 0.125),
                        SizedBox(width: getSideTextWidth(width) * 0.1),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: getSideTextWidth(width) * 0.4,
                                  child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text('New Employee Support',
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.muktaVaani(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromRGBO(
                                                  77, 63, 40, 1),
                                              fontSize: 32,
                                              height: 1.25)))),
                              SizedBox(
                                  width: getSideTextWidth(width) * 0.5,
                                  child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                          'Our platform gives managers access to\ninstant, actionable insight into how engaged\nand empowered new employees are during\neach stage of onboarding.',
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.muktaVaani(
                                              fontWeight: FontWeight.normal,
                                              color: const Color.fromRGBO(
                                                  77, 63, 40, 1),
                                              fontSize: 26,
                                              height: 1.5)))),
                            ])
                      ],
                    ),
                    SizedBox(height: getSideTextWidth(width) * 0.1),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("images/facilitateConnections.png",
                            width: getSideTextWidth(width) * 0.125),
                        SizedBox(width: getSideTextWidth(width) * 0.1),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: getSideTextWidth(width) * 0.4,
                                  child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                          'Facilitate Company-wide\nConnections',
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.muktaVaani(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromRGBO(
                                                  77, 63, 40, 1),
                                              fontSize: 30,
                                              height: 1.25)))),
                              SizedBox(
                                  width: getSideTextWidth(width) * 0.5,
                                  child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                          'Our platform caters to the new employee\nexperience using data to pair recently hired\nemployees with a cross-functional mentor,\nintroduce relevant groups and activities, and\nautonomize how each employee can\ncontribute to the company culture.',
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.muktaVaani(
                                              fontWeight: FontWeight.normal,
                                              color: const Color.fromRGBO(
                                                  77, 63, 40, 1),
                                              fontSize: 26,
                                              height: 1.5)))),
                            ])
                      ],
                    )
                  ],
                )),
          ]),
          SizedBox(height: width * 0.025),
        ]));
  }
}
