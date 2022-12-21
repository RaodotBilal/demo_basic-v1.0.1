import 'package:demo_basic/presentation/splash_screen/splash_screen.dart';
import 'package:demo_basic/presentation/splash_screen/binding/splash_binding.dart';
import 'package:demo_basic/presentation/login_screen/login_screen.dart';
import 'package:demo_basic/presentation/login_screen/binding/login_binding.dart';
import 'package:demo_basic/presentation/signup_screen/signup_screen.dart';
import 'package:demo_basic/presentation/signup_screen/binding/signup_binding.dart';
import 'package:demo_basic/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:demo_basic/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:demo_basic/presentation/main_screen/main_screen.dart';
import 'package:demo_basic/presentation/main_screen/binding/main_binding.dart';
import 'package:demo_basic/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:demo_basic/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String mainScreen = '/main_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: mainScreen,
      page: () => MainScreen(),
      bindings: [
        MainBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
