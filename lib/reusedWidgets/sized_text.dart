import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SizedText extends StatelessWidget {
  final Widget text;
  final double width;
  const SizedText({super.key, required this.text, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width, child: FittedBox(fit: BoxFit.scaleDown, child: text));
  }
}
