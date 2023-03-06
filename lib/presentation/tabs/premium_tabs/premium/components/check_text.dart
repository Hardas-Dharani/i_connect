import 'package:flutter/material.dart';

import '../../../../../app/config/app_colors.dart';
import '../../../../../app/util/common_txt.dart';

class CheckText extends StatelessWidget {
  const CheckText({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Icon(
            Icons.check,
            color: AppColors.white.withOpacity(0.7),
            size: 27,
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          flex: 3,
          child: CommonText(
            text: text,
            color: AppColors.white.withOpacity(0.7),
            fontSize: 18,
            weight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
