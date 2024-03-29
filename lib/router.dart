import 'package:chat_flutter/screens/auth/views/login_screen.dart';
import 'package:chat_flutter/screens/auth/views/sign_up_screen_auth.dart';
import 'package:chat_flutter/screens/main_navigation/navigation_bar/main_navigation.dart';
import 'package:chat_flutter/screens/onboarding/start_onbording_screen.dart';
import 'package:chat_flutter/screens/onboarding/welcome_onbording_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: StartOnboardingScreen.routeUrl,
      routes: [
        GoRoute(
          name: StartOnboardingScreen.routeName,
          path: StartOnboardingScreen.routeUrl,
          builder: (context, state) => const StartOnboardingScreen(),
        ),
        GoRoute(
          name: SignUpAuthScreen.routeName,
          path: SignUpAuthScreen.routeUrl,
          builder: (context, state) => const SignUpAuthScreen(),
        ),
        GoRoute(
          name: LoginScreen.routeName,
          path: LoginScreen.routeUrl,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          name: WelcomeOnboardingScreen.routeName,
          path: WelcomeOnboardingScreen.routeUrl,
          builder: (context, state) => const WelcomeOnboardingScreen(),
        ),
        GoRoute(
          name: MainNaviagtion.routeName,
          path: "/:tab(personChat|groupChat|myPage)",
          builder: (context, state) {
            final tab = state.pathParameters["tab"]!;
            return MainNaviagtion(tab: tab);
          },
        ),
      ],
    );
  },
);
