import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DynamicRow extends StatelessWidget {
  final List<Widget> children;
  const DynamicRow({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 1025) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: children);
    } else {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center, children: children);
    }
  }
}
