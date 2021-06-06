import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  final Widget child;
  final double height;
  final Color color;
  final double bottomRadius;

  CustomAppBar({
    @required this.child,
    this.height = kToolbarHeight,
    this.color = Colors.white,
    this.bottomRadius = 60,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      height: preferredSize.height,
      // color: Colors.transparent,
      alignment: Alignment.topCenter,
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(bottomRadius),
            bottomRight: Radius.circular(bottomRadius),
          ),
        ),
        color: color,
      ),
      child: child,
    );
  }
}
