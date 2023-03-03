import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_connect/app/util/common_txt.dart';
import 'package:sizer/sizer.dart';

class AvatarWithLabel extends StatelessWidget {
  const AvatarWithLabel({
    required this.icons,
    required this.iconColor,
    required this.label,
    required this.labelColor,
    required this.backgroundColor,
    this.press,
    this.circleSize,
    this.iconSize,
    Key? key,
  }) : super(key: key);
  final IconData icons;
  final Color iconColor;
  final String label;
  final Color labelColor;
  final Function()? press;
  final Color backgroundColor;
  final double? circleSize;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press, //() {},
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: backgroundColor, //AppColors.lightBlack2,
            radius: circleSize, //8.w,
            child: Icon(
              icons,
              // CupertinoIcons.person_add,
              color: iconColor, //AppColors.green.withOpacity(0.6),
              size: iconSize, //9.w,
            ),
          ),
          const SizedBox(height: 14),
          CommonText(
            text: label,
            color: labelColor, //AppColors.white.withOpacity(0.6),
            fontSize: 16,
            weight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
