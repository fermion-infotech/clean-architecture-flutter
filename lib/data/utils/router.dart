import 'package:go_router/go_router.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/view/onboarding/app_intro_page.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/view/onboarding/mobile_verification_page.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/view/main/home_page.dart';

import 'constants.dart';


final router = GoRouter(routes: [
  GoRoute(path: initialPath, builder: (context, state) => const AppIntroPage()),
  GoRoute(path: "/mobile-verification", builder: (context, state) => const MobileVerificationPage()),
  GoRoute(path: "/home", builder: (context, state) => const HomePage())
]);
