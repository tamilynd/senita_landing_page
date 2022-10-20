import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:landing_page/reusedWidgets/sized_text.dart';

class ThankYouDialog extends StatelessWidget {
  const ThankYouDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        elevation: 16,
        child: Container(
            width: width * 0.3,
            height: width * 0.3,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(207, 180, 172, 0.75),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                    topRight: Radius.circular(36))),
            child: Column(children: [
              SizedBox(
                  height: width * 0.05,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, width * 0.005, width * 0.005, 0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            splashRadius: 0.1,
                          )))),
              SizedText(
                  width: width * 0.15,
                  text:
                      const Text('Thank you!', style: TextStyle(fontSize: 30))),
              Container(width: width * 0.28, color: Colors.black, height: 2),
              SizedBox(
                height: width * 0.01,
              ),
              SizedText(
                  width: width * 0.25,
                  text: const Text(
                      'We will reach out to you\nvia email with more information\nas it is available.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30)))
            ])));
  }
}
