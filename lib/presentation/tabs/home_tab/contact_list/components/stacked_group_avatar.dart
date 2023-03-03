import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StackedAvatras extends StatelessWidget {
  const StackedAvatras({
    required this.imgURL,
    this.radius,
    super.key,
  });
  final String imgURL;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 14.0,
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: radius ?? 5.5.w,
            backgroundImage: AssetImage(imgURL),
          ),
        ),
        Positioned(
          left: 7.0,
          child: CircleAvatar(
            backgroundColor: Colors.yellow,
            radius: radius ?? 5.5.w,
            backgroundImage: AssetImage(imgURL),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: radius ?? 5.5.w,
          backgroundImage: AssetImage(imgURL),
        ),
      ],
    );
  }
}
