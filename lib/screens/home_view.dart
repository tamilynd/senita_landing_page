import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:landing_page/screens/deeper_connections.dart';
import 'package:landing_page/screens/footer_view.dart';
import 'package:landing_page/screens/increase_retention.dart';
import 'package:landing_page/screens/jumbotron_widget.dart';
import 'package:landing_page/screens/onboarding_features_view.dart';
import 'package:landing_page/screens/statistics_view.dart';
import 'package:landing_page/screens/we_are_senita_view.dart';
import 'package:landing_page/screens/beta_time_view.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ItemScrollController _scrollController = ItemScrollController();

  void _scrollToBeta() {
    _scrollController.scrollTo(
        index: 7,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
        opacityAnimationWeights: [1, 1, 1]);
  }

  @override
  Widget build(BuildContext context) {
    var myList = <Widget>[
      Jumbotron(signUpFunction: _scrollToBeta),
      const StatisticsView(),
      WeAreSenita(signUpFunction: _scrollToBeta),
      const IncreaseRetentionView(),
      const DeeperConnectionsView(),
      const OnboardingFeaturesView(),
      const BetaTimeView(),
      const FooterView()
    ];
    return Scaffold(
        body: ScrollablePositionedList.builder(
      itemScrollController: _scrollController,
      itemCount: myList.length,
      itemBuilder: (context, index) {
        return myList[index];
      },
    ));
  }
}
