import 'package:flutter/cupertino.dart';

class Button extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const Button({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(onPressed: onTap, child: Text(text));
  }
}
