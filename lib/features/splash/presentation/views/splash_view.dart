import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/configs/router/app_router.dart';
import 'package:fruit_hub/features/splash/presentation/cubit/splash_cubit/splash_cubit.dart';
import 'package:fruit_hub/features/splash/presentation/widgets/splash_view_body.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is Unauthenticated) {
          GoRouter.of(context).go(AppRouter.kOnboardingView);
        }
      },
      builder: (context, state) {
        return const Scaffold(body: SplashViewBody());
      },
    );
  }
}
