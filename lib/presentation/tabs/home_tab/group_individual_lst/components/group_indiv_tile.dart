import 'package:flutter/material.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/util/common_txt.dart';

class IndividualConnTile extends StatelessWidget {
  final Color bgColor;
  final String label;
  final Widget? subtitle;
  final Widget? trailing;
  final Widget leading;
  final Function()? ontap;
  const IndividualConnTile({
    required this.bgColor,
    required this.label,
    this.subtitle,
    required this.trailing,
    required this.leading,
    this.ontap,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          color: bgColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(flex: 2, child: leading),
            const SizedBox(width: 12),
            Expanded(
              flex: 5,
              child: CommonText(
                text: label,
                fontSize: 16,
                color: AppColors.white,
                weight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            trailing ?? Container(),
          ],
        ),
      ),
    );
  }
}
