import 'package:flutter/material.dart';
import 'package:i_connect/app/extensions/color.dart';

class CustomGradientButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient? gradient;
  final VoidCallback? onPressed;
  final Widget child;
  const CustomGradientButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width = 343,
    this.height = 59.0,
    this.gradient,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient ??
            LinearGradient(colors: [
              HexColor('00C5E0').withOpacity(0.9),
              HexColor('00FFA8').withOpacity(0.9)
            ]),
        borderRadius:
            borderRadius ?? const BorderRadius.all(Radius.circular(33)),
    ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black.withOpacity(0.0),
          shadowColor: Colors.black.withOpacity(0.1),
          shape: RoundedRectangleBorder(
              borderRadius:
                  borderRadius ?? const BorderRadius.all(Radius.circular(33))),
        ),
        child: child,
      ),
    );
  }
}
