import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                child: Text(
                  "Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: widget.textColor,
                      fontSize: 40,
                      height: 1.5),
                ))));
  }
}
