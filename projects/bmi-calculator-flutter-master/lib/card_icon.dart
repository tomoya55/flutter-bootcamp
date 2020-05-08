import 'package:flutter/material.dart';
import 'constants.dart';

class CardIcon extends StatelessWidget {
  final IconData iconData;
  final String text;

  CardIcon({@required this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
