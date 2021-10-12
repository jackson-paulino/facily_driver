import 'package:flutter_bloc/flutter_bloc.dart';

enum SplashState { loadingSplashState, finishedSplashState, failSplashState }

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState.loadingSplashState);

  Future<void> loadingSplashHome() async {
    await Future.delayed(const Duration(seconds: 3));
    emit(SplashState.finishedSplashState);
  }
}
