import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:landing_page/reusedWidgets/sign_up_button.dart';
import 'package:google_fonts/google_fonts.dart';

class WeAreSenita extends StatelessWidget {
  final Function signUpFunction;
  const WeAreSenita({super.key, required this.signUpFunction});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width > 1025) {
      return Container(
          color: const Color.fromRGBO(207, 180, 172, 1),
          child: Center(
            child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1400),
                child: Row(children: [
                  ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: width * 0.7),
                      child: const Image(
                          image: AssetImage("images/womanWorking.png"))),
                  SizedBox(width: width * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: width * 0.25),
                          child: Text('WE ARE',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.muktaVaani(
                                  fontWeight: FontWeight.normal,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 25,
                                  height: 1.15))),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: width * 0.25),
                          child: Text('Senita',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 45,
                                  height: 1.15))),
                      SizedBox(height: width * 0.02),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: width * 0.25),
                          child: Text(
                              'An employee engagement \nsoftware that caters to \nrecently hired employee \nneeds.',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.sumana(
                                  fontWeight: FontWeight.normal,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 22,
                                  height: 1.25,
                                  letterSpacing: 1.25))),
                      SizedBox(height: width * 0.02),
                      ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: width * 0.2, maxHeight: width * 0.1),
                          child: SignUp(
                            textColor: const Color.fromRGBO(200, 162, 135, 1),
                            maxWidth: width * 0.1,
                            buttonFunction: signUpFunction,
                          ))
                    ],
                  )
                ])),
          ));
    } else {
      return Container(
          color: const Color.fromRGBO(207, 180, 172, 1),
          child: Center(
            child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 770),
                child: Column(children: [
                  SizedBox(height: width * 0.02),
                  ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: width * 0.7),
                      child: const Image(
                          image: AssetImage("images/womanWorking.png"))),
                  SizedBox(height: width * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: width * 0.4),
                          child: const Text('WE ARE',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 25,
                                  height: 1.15))),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: width * 0.4),
                          child: const Text('Senita Co.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 45,
                                  height: 1.15))),
                      SizedBox(height: width * 0.02),
                      ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: width * 0.4),
                          child: const Text(
                              'An employee engagement \nsoftware that caters to \nrecently hired employee \nneeds.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 22,
                                  height: 1.25))),
                      SizedBox(height: width * 0.02),
                      ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: width * 0.2, maxHeight: width * 0.05),
                          child: SignUp(
                            textColor: const Color.fromRGBO(200, 162, 135, 1),
                            maxWidth: width * 0.25,
                            buttonFunction: signUpFunction,
                          )),
                      SizedBox(height: width * 0.05),
                    ],
                  )
                ])),
          ));
      ;
    }
  }
}

//770 Limit for vertical padding
//1025 Limit to switch to vertical
//1400 max width horizontal