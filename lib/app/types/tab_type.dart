import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum TabType { home, myGroups, search, premium }

extension TabItem on TabType {
  Icon get icon {
    switch (this) {
      case TabType.home:
        return const Icon(CupertinoIcons.home, size: 25);
      case TabType.myGroups:
        return const Icon(CupertinoIcons.group, size: 25);
      case TabType.search:
        return const Icon(CupertinoIcons.search, size: 25);
      case TabType.premium:
        return const Icon(FontAwesomeIcons.crown, size: 25);
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

  BottomNavigationBarItem get bottomNavigationBarItem {
    return BottomNavigationBarItem(
      label: title,
      icon: icon,
    );
  }
}
