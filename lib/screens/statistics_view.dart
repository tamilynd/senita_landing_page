import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(200, 162, 135, 1),
        child: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.width * 0.15),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 50,
                            height: 1.5),
                        children: [
                          TextSpan(text: 'According to the SHRM,'),
                          WidgetSpan(child: SizedBox(width: 10)),
                          TextSpan(
                              text:
                                  'employee turnover \n can be as much as 50% in the first 18 \n months of employment.',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      )))),
          SizedBox(height: MediaQuery.of(context).size.width * 0.03),
          Container(
              height: 1.5,
              width: MediaQuery.of(context).size.width * 0.7,
              color: Colors.white),
          SizedBox(height: MediaQuery.of(context).size.width * 0.03),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Employees attrition is expensive and puts pressure \n on highly burdened resources as well as a \n company\'s financial bottom line...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 30,
                        height: 1.5),
                  ))),
          SizedBox(height: MediaQuery.of(context).size.width * 0.15),
        ]));
  }
}
