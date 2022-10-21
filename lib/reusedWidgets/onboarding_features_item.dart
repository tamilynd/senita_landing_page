import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:landing_page/reusedWidgets/sized_text.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingFeature extends StatelessWidget {
  final List<InlineSpan> paragraph;
  final double width;
  final Color color;
  const OnboardingFeature(
      {super.key,
      required this.paragraph,
      required this.width,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedText(
          width: width * 0.5,
          text: RichText(
              textAlign: TextAlign.right,
              text: TextSpan(
                style: GoogleFonts.muktaVaani(
                    fontWeight: FontWeight.w300,
                    color: color,
                    fontSize: 24,
                    height: 1.3),
                children: paragraph,
              ))),
      SizedBox(width: width * 0.02),
      Container(width: width * 0.5, height: 1, color: color),
    ]);
  }
}
