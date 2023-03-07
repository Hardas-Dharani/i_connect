import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_connect/app/util/common_txt.dart';

class AvatarWithLabel extends StatelessWidget {
  const AvatarWithLabel({
    required this.label,
    required this.labelColor,
    this.press,
    this.avatar,
    Key? key,
  }) : super(key: key);

  final String label;
  final Color labelColor;
  final Function()? press;

  final Widget? avatar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          avatar ?? Container(),
          const SizedBox(height: 14),
          CommonText(
            text: label,
            color: labelColor,
            fontSize: 16,
            weight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
