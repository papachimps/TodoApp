import 'package:flutter/material.dart';

import '../../BLoc/globals.dart';

class IntrayTodoItem extends StatelessWidget {
  final String title;
  const IntrayTodoItem({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      margin: EdgeInsets.all(kDefaultMarginFactor / 2),
      padding: EdgeInsets.all(kDefaultMarginFactor / 2),
      height: kDefaultMarginFactor * 3,
      decoration: ShapeDecoration(
        color: kRedColor,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultMarginFactor),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.radio_button_checked),
          Text(title),
        ],
      ),
    );
  }
}
