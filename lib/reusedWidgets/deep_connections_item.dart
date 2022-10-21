import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DeepConnectionsItem extends StatelessWidget {
  final String icon;
  final String title;
  final List<InlineSpan> paragraph;
  final double width;
  const DeepConnectionsItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.paragraph,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Image.asset(icon, height: width * 0.25),
      SizedBox(height: width * 0.075),
      SizedBox(
          width: width * 0.85,
          child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.muktaVaani(
                      color: const Color.fromRGBO(77, 63, 40, 1),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      height: 1.25)))),
      SizedBox(height: width * 0.05),
      SizedBox(
          width: width,
          child: FittedBox(
              fit: BoxFit.scaleDown,
              child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: GoogleFonts.muktaVaani(
                        fontWeight: FontWeight.normal,
                        color: const Color.fromRGBO(77, 63, 40, 1),
                        fontSize: 50,
                        height: 1.5),
                    children: paragraph,
                  ))))
    ]));
  }
}
