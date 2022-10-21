import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:landing_page/reusedWidgets/dynamic_row.dart';
import 'package:landing_page/reusedWidgets/sized_text.dart';
import 'package:landing_page/reusedWidgets/thank_you_dialog.dart';
import 'package:google_fonts/google_fonts.dart';

class BetaTimeView extends StatefulWidget {
  const BetaTimeView({super.key});

  @override
  State<BetaTimeView> createState() => _BetaTimeViewState();
}

class _BetaTimeViewState extends State<BetaTimeView> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        color: const Color.fromRGBO(200, 162, 135, 1),
        child: Column(children: [
          SizedBox(height: width * 0.05),
          SizedText(
              width: width * 0.25,
              text: Text('Sign up!',
                  style: GoogleFonts.muktaVaani(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold))),
          SizedBox(height: width * 0.04),
          SizedText(
              width: width * 0.8,
              text: Text(
                  'We are launching the platform to the public on Oct 31!\nSign your team up today! Let\'s see if we\'re a good fit for your team. ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.muktaVaani(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w200,
                      height: 1.25))),
          SizedBox(height: width * 0.05),
          Container(
              width: width * 0.6,
              height: width * 0.3,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                      topRight: Radius.circular(36))),
              child: Column(children: [
                SizedBox(height: width * 0.05),
                SizedText(
                    width: width * 0.1,
                    text: Text('Email',
                        style: GoogleFonts.sumana(
                            color: const Color.fromRGBO(207, 180, 172, 1),
                            fontSize: 50,
                            height: 1))),
                SizedBox(height: width * 0.03),
                Container(
                    width: width * 0.45,
                    color: const Color.fromRGBO(235, 235, 235, .8),
                    child: TextField(
                        controller: emailController,
                        cursorColor: const Color.fromRGBO(172, 167, 161, 1),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Email',
                            contentPadding: EdgeInsets.only(
                                left: width * 0.025,
                                right: width * 0.05,
                                top: width * 0.01,
                                bottom: width * 0.01)),
                        style: GoogleFonts.raleway(
                            fontSize: width * 0.02,
                            color: const Color.fromRGBO(172, 167, 161, 1),
                            height: 1.2,
                            letterSpacing: 1.25))),
                SizedBox(height: width * 0.04),
                SizedBox(
                    width: width * 0.25,
                    child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const ThankYouDialog();
                                  });
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    const MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(207, 180, 172, 1)),
                                padding: MaterialStatePropertyAll<EdgeInsets>(
                                    EdgeInsets.fromLTRB(
                                        width * 0.075,
                                        width * 0.015,
                                        width * 0.075,
                                        width * 0.015)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)))),
                            child: Text(
                              "Submit",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(255, 251, 245, 1),
                                  fontSize: 30,
                                  height: 1.4),
                            ))))
              ])),
          SizedBox(height: width * 0.075),
        ]));
  }
}
