import 'package:get/get.dart';
import 'package:i_connect/presentation/pages/application/application_view.dart';
import 'package:i_connect/presentation/pages/application/binding/application_binding.dart';
import 'package:i_connect/presentation/pages/profile/profile_page.dart';
import 'package:i_connect/presentation/pages/sign_up/binding/sign_up_binding.dart';
import 'package:i_connect/presentation/pages/sign_up/sign_up_page.dart';
import 'package:i_connect/presentation/pages/splash/binding/start_page_binding.dart';
import 'package:i_connect/presentation/pages/splash/start_page.dart';
import 'package:i_connect/presentation/tabs/home_tab/connect_ndividual/binding/connect_individually_binding.dart';
import 'package:i_connect/presentation/tabs/home_tab/connect_ndividual/con_individual_view.dart';
import 'package:i_connect/presentation/tabs/home_tab/lets_connect/bindings/lets_connect_binding.dart';
import 'package:i_connect/presentation/tabs/home_tab/lets_connect/lets_connect_view.dart';

import '../presentation/pages/profile/binding/profile_binding.dart';
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
    GetPage(
      name: Routes.signUpScreen,
      page: () => const SignUpScreen(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.startScreen,
      page: () => const StartPage(),
      binding: StartPageBinding(),
    ),
    GetPage(
      name: Routes.profileScreen,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.applicationScreen,
      page: () => const ApplicationView(),
      binding: ApplicationsBinding(),
    ),
    GetPage(
      name: Routes.letsConnectScreen,
      page: () => LetsConnectView(),
      binding: LetsConnectBinding(),
    ),
    GetPage(
      name: Routes.indiviConnectScreen,
      page: () => const ConnectIndividuallyView(),
      binding: ConnectIndividuallyBinding(),
    ),
  ];
}
