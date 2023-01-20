import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/app_colors.dart';
import '../extensions/color.dart';
import '../services/local_storage.dart';

class ScafoldedWidget extends StatelessWidget {
  final Widget body;
  const ScafoldedWidget({super.key, required this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [HexColor("262A38"), HexColor("000711")],
              ),
            ),
            child: body));
  }
}
