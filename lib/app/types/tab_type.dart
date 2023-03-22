import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../config/app_colors.dart';
import '../util/util.dart';

enum TabType { home, myGroups, search, premium }

extension TabItem on TabType {
  BottomNavigationBarItem get bottomNavigationBarItem {
    return BottomNavigationBarItem(
      label: title,
    
      icon: icon,
    );
  }

  Widget get icon {
    switch (this) {
      case TabType.home:
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            width: 35,
            Utils.getSvgFilePath('home'),
            color: AppColors.green.withOpacity(0.6),
            fit: BoxFit.contain,
          ),
        );
      case TabType.myGroups:
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            width: 35,
            Utils.getSvgFilePath('group'),
            color: AppColors.green.withOpacity(0.6),
            fit: BoxFit.contain,
          ),
        );
      case TabType.search:
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            width: 35,
            Utils.getSvgFilePath('search'),
            color: AppColors.green.withOpacity(0.6),
            fit: BoxFit.contain,
          ),
        );
      case TabType.premium:
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            width: 35,
            Utils.getSvgFilePath('premium'),
            color: AppColors.green.withOpacity(0.6),
            fit: BoxFit.contain,
          ),
        );
    }
  }

  String get title {
    switch (this) {
      case TabType.home:
        return "Home";
      case TabType.myGroups:
        return "My Groups";
      case TabType.search:
        return "Search";
      case TabType.premium:
        return "Premium";
    }
  }
}
