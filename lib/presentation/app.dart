import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_connect/presentation/pages/splash/splash.dart';
import 'package:sizer/sizer.dart';
import '../app/services/network_binding.dart';
import '../routes/app_routes.dart';
import '../routes/app_routings.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: NetworkBinding(),
        initialRoute: Routes.splashScreen,
        home: const SplashScreen(),
        getPages: RoutingModule().routingList,
      );
    });
  }
}
