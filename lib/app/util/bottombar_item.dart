import 'package:flutter/material.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:sizer/sizer.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    required this.icons,
    required this.iconColor,
    required this.label,
    required this.labelColor,
    required this.index,
    //required this.color,
    this.press,
    Key? key,
  }) : super(key: key);
  final IconData icons;
  final Color iconColor;
  final String label;
  final Color labelColor;
  final int index;
  final Function()? press;
  //final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 6, bottom: 6, left: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icons,
              size: 6.w,
              color: iconColor,
            ),
            CommonText(
              text: label,
              fontSize: 14,
              color: labelColor,
            )
          ],
        ),
      ),
    );
  }
}
