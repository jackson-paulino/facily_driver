import 'package:facily_driver/blocs/splash_cubit.dart';
import 'package:facily_driver/shared/app_routes.dart';
import 'package:facily_driver/ui/widgets/custom_asset_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => SplashCubit()..loadingSplashHome(),
        child: const SplashView());
  }
}

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (BuildContext context, state) {
        if (state == SplashState.finishedSplashState) {
          Navigator.pushReplacementNamed(context, AppRoutes.homePage);
        }
      },
      child: const Scaffold(body: CustomAssetImage()),
    );
  }
}
