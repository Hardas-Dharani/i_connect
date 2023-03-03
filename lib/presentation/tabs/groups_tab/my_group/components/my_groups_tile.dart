import 'package:flutter/material.dart';
import 'package:i_connect/app/config/app_colors.dart';
import 'package:i_connect/app/util/common_txt.dart';

class MyGroupsTile extends StatelessWidget {
  const MyGroupsTile({
    required this.bgColor,
    required this.label,
    required this.subtitle,
    required this.trailing,
    required this.leading,
    this.ontap,
    Key? key,
  }) : super(key: key);
  final Color bgColor;
  final String label;
  final String subtitle;
  final Widget? trailing;
  final Widget leading;
  final Function()? ontap;
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: label,
                    fontSize: 16,
                    color: AppColors.white,
                    weight: FontWeight.w600,
                  ),
                  const SizedBox(height: 6),
                  CommonText(
                    text: subtitle,
                    fontSize: 14,
                    color: AppColors.white.withOpacity(0.7),
                    weight: FontWeight.w300,
                  ),
                ],
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
