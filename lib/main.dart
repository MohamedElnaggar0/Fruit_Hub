import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/configs/router/app_router.dart';
import 'package:fruit_hub/features/splash/presentation/cubit/splash_cubit/splash_cubit.dart';

void main() {
  runApp(const FruitHubApp());
}

class FruitHubApp extends StatelessWidget {
  const FruitHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
