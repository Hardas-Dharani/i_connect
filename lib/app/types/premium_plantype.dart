import 'package:flutter/cupertino.dart';

import '../extensions/color.dart';

enum PremiumPlanType { basic, silver, gold, platinum }

extension ItemGradient on PremiumPlanType {
  List<Color> get colorList {
    switch (this) {
      case PremiumPlanType.basic:
        return [
          HexColor('00C5E0'),
          HexColor('01A1D1'),
          HexColor('0181C4'),
        ];
      case PremiumPlanType.silver:
        return [
          HexColor('4E5266'),
          HexColor('464A5D'),
          HexColor('323645'),
        ];
      case PremiumPlanType.gold:
        return [
          HexColor('F0B601'),
          HexColor('DBA101'),
          HexColor('BE8500'),
        ];
      case PremiumPlanType.platinum:
        return [
          HexColor('00D0D5'),
          HexColor('00DBCA'),
          HexColor('00EDB9'),
        ];
    }
  }

  GradientTransform get transform {
    return const GradientRotation(126);
  }

  Gradient get gradient {
    return LinearGradient(
      colors: colorList,
      transform: transform,
    );
  }

  // Gradient get gradient {
  //   switch (this) {
  //     case PremiumPlanType.basic:
  //       return LinearGradient(
  //         colors: [
  //           HexColor('00C5E0'),
  //           HexColor('01A1D1'),
  //           HexColor('0181C4'),
  //         ],
  //         transform: const GradientRotation(126),
  //       );
  //     case PremiumPlanType.silver:
  //       return LinearGradient(
  //         colors: [
  //           HexColor('4E5266'),
  //           HexColor('464A5D'),
  //           HexColor('323645'),
  //         ],
  //         transform: const GradientRotation(126),
  //       );
  //     case PremiumPlanType.gold:
  //       return LinearGradient(
  //         colors: [
  //           HexColor('F0B601'),
  //           HexColor('DBA101'),
  //           HexColor('BE8500'),
  //         ],
  //         transform: const GradientRotation(126),
  //       );
  //     case PremiumPlanType.platinum:
  //       return LinearGradient(
  //         colors: [
  //           HexColor('00D0D5'),
  //           HexColor('00DBCA'),
  //           HexColor('00EDB9'),
  //         ],
  //         transform: const GradientRotation(126),
  //       );
  //   }
  // }
}
