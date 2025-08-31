import 'package:fruit_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kOnboardingView = '/onboardingView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
    ],
  );
}
