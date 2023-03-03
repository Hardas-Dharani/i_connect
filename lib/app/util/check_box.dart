import 'package:flutter/material.dart';
import 'package:i_connect/app/config/app_colors.dart';

import 'common_txt.dart';

class TOCCheckBox extends StatelessWidget {
  const TOCCheckBox({
    Key? key,
    required this.value,
    this.onchanged,
    required this.label,
    this.labelColor,
    required this.labelFontSize,
  }) : super(key: key);

  final bool value;
  final Function(bool?)? onchanged;
  final String label;
  final Color? labelColor;
  final double labelFontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
            value: value,
            activeColor: AppColors.white,
            fillColor: MaterialStateProperty.all(AppColors.green),
            checkColor: AppColors.white,
            onChanged: onchanged,
            side: BorderSide(color: AppColors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            )),
        Expanded(
          child: CommonText(
            text: label,
            color: labelColor ?? AppColors.white,
            fontSize: labelFontSize,
            weight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
