import 'package:get/get.dart';
import '../modules/onboarding/view/onboarding_page.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/login/view/login_page.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/board/view/board_page.dart';
import '../modules/board/bindings/board_binding.dart';

class AppRoutes {
  static const onboarding = '/onboarding';
  static const login = '/login';
  static const board = '/board';

  static final pages = [
    GetPage(
      name: onboarding,
      page: () => OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: login,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: board,
      page: () => BoardPage(),
      binding: BoardBinding(),
    ),
  ];
}
