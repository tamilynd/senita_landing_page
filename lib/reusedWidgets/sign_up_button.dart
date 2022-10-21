import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/reusedWidgets/sized_text.dart';

class SignUp extends StatefulWidget {
  const SignUp(
      {super.key,
      required this.textColor,
      required this.maxWidth,
      required this.buttonFunction});
  final Color textColor;
  final double maxWidth;
  final Function buttonFunction;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.maxWidth,
        child: FittedBox(
            fit: BoxFit.scaleDown,
            child: TextButton(
                onPressed: () {
                  widget.buttonFunction();
                },
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.white),
                    padding: MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width * 0.05,
                            MediaQuery.of(context).size.width * 0.02,
                            MediaQuery.of(context).size.width * 0.05,
                            MediaQuery.of(context).size.width * 0.02)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)))),
                child: Center(
                    child: SizedText(
                        width: widget.maxWidth * 0.6,
                        text: Text(
                          "Sign Up",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.bold,
                              color: widget.textColor,
                              fontSize: 35,
                              height: 1.5),
                        ))))));
  }
}
