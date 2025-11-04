import 'package:design_system/src/tokens/paddings.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({this.child, super.key});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
            horizontal: horizontalEdge, vertical: verticalEdge),
        child: child,
      ),
    );
  }
}
