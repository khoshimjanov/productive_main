import 'package:flutter/material.dart';
import 'package:productive/core/pages/error.dart';
import 'package:productive/features/authentication/presentation/login_screen.dart';
import 'package:productive/features/authentication/presentation/pages/forgot_password/forgot_password_page.dart';
import 'package:productive/features/authentication/presentation/pages/new_password/new_password.dart';
import 'package:productive/features/authentication/presentation/pages/sign_up/sign_up.dart';
import 'package:productive/features/authentication/presentation/pages/verification/verification_page.dart';
import 'package:productive/features/home/home.dart';
import 'package:productive/features/onBoard/on_board.dart';

import '../../features/authentication/presentation/pages/splash.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    var args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) =>  const SplashScreen(),
          // builder: (context) =>  const OnBoarding(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case '/forgetPassword':
        return MaterialPageRoute(
          builder: (context) => const ForgotPasswordPage(),
        );
      case '/verifPage':
        return MaterialPageRoute(
          builder: (context) => const VerificationPage(),
        );
      case '/signUp':
        return MaterialPageRoute(
          builder: (context) => const SignUp(),
        );
      case '/newPassword':
        return MaterialPageRoute(
          builder: (context) => const CreatePassword(),
        );
      case '/onBoard':
        return MaterialPageRoute(
          builder: (context) => const OnBoarding(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
    }
  }
}