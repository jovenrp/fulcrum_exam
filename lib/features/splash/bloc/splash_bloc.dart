
import 'package:flutter_bloc/flutter_bloc.dart';
import 'splash_state.dart';

class SplashBloc extends Cubit<SplashState> {
  SplashBloc() : super(SplashState());

  void loadSplashScreen() async {
    emit(state.copyWith(isLoading: true, isLoggedIn: false));

    Future.delayed(const Duration(seconds: 1), () {
      emit(state.copyWith(isLoading: false, isLoggedIn: true,));
    });

  }
}
