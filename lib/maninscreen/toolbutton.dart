import 'package:flutter/material.dart';

class ToolButton extends StatelessWidget {
  final Function() onTap;
  final Widget child;
  final Color? backGroundColor;
  final EdgeInsets? padding;
  final Function()? onLongPress;
  final Color colorBorder;
  const ToolButton(
      {Key? key,
      required this.onTap,
      required this.child,
      this.backGroundColor,
      this.padding,
      this.onLongPress,
      this.colorBorder = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 0),
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: backGroundColor ?? Colors.transparent,
          //   color: Color.fromARGB(255, 80, 64, 158),
          // Color.fromARGB(63, 196, 195, 195),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Transform.scale(
          scale: 0.8,
          child: child,
        ),
      ),
    );
  }
}
