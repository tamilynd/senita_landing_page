import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:landing_page/reusedWidgets/deep_connections_item.dart';
import 'package:landing_page/reusedWidgets/dynamic_row.dart';

class DeeperConnectionsView extends StatelessWidget {
  const DeeperConnectionsView({super.key});

  double getItemWidth(double width) {
    if (width > 1025) {
      return width * 0.225;
    } else {
      return width * 0.35;
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        color: const Color.fromRGBO(255, 255, 255, 1),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: width * 0.075),
          Row(children: [
            SizedBox(width: width * 0.05),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                  width: width * 0.25,
                  child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('Our features enable',
                          style: TextStyle(
                              color: Color.fromRGBO(207, 180, 172, 1),
                              fontSize: 29.1,
                              fontWeight: FontWeight.bold,
                              height: 1.25)))),
              SizedBox(
                  width: width * 0.4,
                  child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('deep connections...',
                          style: TextStyle(
                              color: Color.fromRGBO(207, 180, 172, 1),
                              fontSize: 53.1,
                              fontWeight: FontWeight.bold,
                              height: 1.25)))),
            ])
          ]),
          SizedBox(height: width * 0.05),
          DynamicRow(
            children: [
              DeepConnectionsItem(
                  icon: 'images/optimizeOnboarding.png',
                  title: 'Optimize\nOnboarding Efforts',
                  paragraph: const [
                    TextSpan(
                        text:
                            'Empower managers to create a\ndelightful onboarding experience\nfor new employees, which can\n'),
                    TextSpan(
                        text: 'improve retention by over 80%\n',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'according to the Brandon Hall\nGroup.')
                  ],
                  width: getItemWidth(width)),
              SizedBox(height: width * 0.03),
              DeepConnectionsItem(
                  icon: 'images/intentionalIntros.png',
                  title: 'Intentional\nIntroductions',
                  paragraph: const [
                    TextSpan(
                        text:
                            'In a recent Gallup study, over half of\nworkers who said they had a friend\nat work also felt'),
                    WidgetSpan(child: SizedBox(width: 10)),
                    TextSpan(
                        text: 'enagaged,\nproductive, and successful,',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    WidgetSpan(child: SizedBox(width: 10)),
                    TextSpan(text: 'versus\n just 8% of those who don\'t.')
                  ],
                  width: getItemWidth(width)),
              SizedBox(height: width * 0.03),
              DeepConnectionsItem(
                  icon: 'images/realtimeInsight.png',
                  title: 'Real-time\nInsight',
                  paragraph: const [
                    TextSpan(text: 'Enables managers to'),
                    WidgetSpan(child: SizedBox(width: 10)),
                    TextSpan(
                        text:
                            'know how to\ncater to their employees\' needs,\n',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    WidgetSpan(child: SizedBox(width: 10)),
                    TextSpan(
                        text:
                            'reducing the chance of someone\nleaving for preventable causes due\nto lack of awareness.')
                  ],
                  width: getItemWidth(width))
            ],
          ),
          SizedBox(height: width * 0.05)
        ]));
  }
}
