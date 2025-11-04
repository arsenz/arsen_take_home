import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HeadlineDisplay extends StatelessWidget {
  final String? text;
  const HeadlineDisplay({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text ?? '', style: headline);
  }
}
