import 'package:ai_chat_flutter/page/create_password/create_password.dart';
import 'package:ai_chat_flutter/page/home/home.dart';
import 'package:ai_chat_flutter/page/introduction/introduction.dart';
import 'package:ai_chat_flutter/page/login/login.dart';
import 'package:ai_chat_flutter/page/register/register.dart';
import 'package:ai_chat_flutter/page/verification/verification.dart';
import 'package:ai_chat_flutter/page/resetpassword/resetpassword.dart';
import 'package:ai_chat_flutter/page/profile/profile.dart';
import 'package:ai_chat_flutter/page/welcom_screen/welcome_page.dart';
import 'package:ai_chat_flutter/page/welcom_screen/welcomescreen.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.introduction;

  static final routes = [
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.verification,
      page: () => VerificationPage(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: AppRoutes.create_password,
      page: () => const CreatepasswordPage(),
      binding: CreatepasswordBinding(),
    ),
    GetPage(
      name: AppRoutes.resetpassword,
      page: () => const ResetpasswordPage(),
      binding: ResetpasswordBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRoutes.welcom_screen,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.introduction,
      page: () => const IntroductionPage(),
      binding: IntroductionBinding(),
    ),
  ];
}
