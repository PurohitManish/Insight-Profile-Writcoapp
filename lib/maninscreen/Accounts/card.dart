import 'package:flutter/material.dart';

class card extends StatelessWidget {
  // final Function() onTap;
  final Widget child;
  final Color? backGroundColor;
  final EdgeInsets? padding;
  final Function()? onLongPress;
  final Color colorBorder;
  final EdgeInsets? margin;
  const card(
      {Key? key,
      // required this.onTap,
      required this.child,
      this.backGroundColor,
      this.padding,
      this.onLongPress,
      this.colorBorder = Colors.grey,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 350,
      margin: EdgeInsets.only(left: 10, right: 0, top: 25, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 225, 225, 225), blurRadius: 10),
          ],
          borderRadius: BorderRadius.circular(5)),
      child: child,
    );
  }
}
