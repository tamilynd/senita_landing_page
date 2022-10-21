import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/reusedWidgets/sign_up_button.dart';

class Jumbotron extends StatelessWidget {
  final Function signUpFunction;
  const Jumbotron({super.key, required this.signUpFunction});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ConstrainedBox(
        constraints: BoxConstraints(maxHeight: width * .7),
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 44, 44, 44),
                image: DecorationImage(
                  image: const AssetImage("images/highfives.png"),
                  fit: BoxFit.fitWidth,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.35), BlendMode.dstATop),
                )),
          ),
          Center(
              child: Column(
            children: [
              SizedBox(height: width * .6 * 0.1),
              SizedBox(
                width: width * 0.15,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text("Senita",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(207, 180, 172, 1),
                          fontSize: 50,
                          height: 0.8)),
                ),
              ),
              SizedBox(height: width * .6 * 0.01),
              SizedBox(
                width: width * 0.2,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text("EMPLOYEE ENGAGEMENT \n SOFTWARE",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.muktaVaani(
                          fontWeight: FontWeight.w200,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 30,
                          height: 1.15,
                          letterSpacing: 1.5)),
                ),
              ),
              SizedBox(height: width * .6 * 0.1),
              SizedBox(
                  width: width * 0.8,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Make employee rentention \n your superpower.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.vollkorn(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 70,
                          height: 1.25),
                    ),
                  )),
              SizedBox(height: width * .6 * 0.025),
              SizedBox(
                  width: width * 0.7,
                  child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "data-backed tools to enable employees to create \n deep connections to their work and to the company.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.muktaVaani(
                            fontWeight: FontWeight.normal,
                            color: const Color.fromRGBO(172, 167, 161, 1),
                            fontSize: 24,
                            height: 1.5),
                      ))),
              SizedBox(height: width * .6 * 0.125),
              SignUp(
                  textColor: const Color.fromRGBO(200, 162, 135, 1),
                  maxWidth: width * 0.2,
                  buttonFunction: signUpFunction)
            ],
          ))
        ]));
  }
}
