import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons(
      {key,
      required this.onTap,
      required this.iconn,
      required this.colorButtom});

  final VoidCallback onTap;
  final Icon iconn;
  final Color colorButtom;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Icon(iconn.icon),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const CircleBorder()),
        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
        backgroundColor: MaterialStateProperty.all(colorButtom),
      ),
    );
  }
}
