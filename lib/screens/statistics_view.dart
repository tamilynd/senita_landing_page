import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        color: const Color.fromRGBO(200, 162, 135, 1),
        child: Column(children: [
          SizedBox(height: width * 0.15),
          SizedBox(
              width: width * 0.7,
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.muktaVaani(
                            fontWeight: FontWeight.w100,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            letterSpacing: 1.5,
                            fontSize: 50,
                            height: 1.5),
                        children: [
                          const TextSpan(text: 'According to the SHRM,'),
                          const WidgetSpan(child: SizedBox(width: 10)),
                          TextSpan(
                              text:
                                  'employee turnover \n can be as much as 50% in the first 18 \n months of employment.',
                              style: GoogleFonts.muktaVaani(
                                  fontWeight: FontWeight.bold))
                        ],
                      )))),
          SizedBox(height: width * 0.03),
          Container(height: 1.5, width: width * 0.7, color: Colors.white),
          SizedBox(height: width * 0.03),
          SizedBox(
              width: width * 0.7,
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Employees attrition is expensive and puts pressure \n on highly burdened resources as well as a \n company\'s financial bottom line...',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sumana(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 30,
                        height: 1.5,
                        letterSpacing: 1.25),
                  ))),
          SizedBox(height: width * 0.15),
        ]));
  }
}
