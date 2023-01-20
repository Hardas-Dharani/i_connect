import 'package:get/get.dart';

import '../presentation/pages/sign_in/binding/sign_in_binding.dart';
import '../presentation/pages/sign_in/sign_in_page.dart';
import '../presentation/pages/splash/splash.dart';
import 'app_routes.dart';

class RoutingModule {
  List<GetPage> routingList = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
      // binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.signInScreen,
      page: () => const SigInScreen(),
      binding: SiginBinding(),
    ),
  ];
}
