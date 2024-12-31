
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fulcrum/application/utils/app_colors.dart';
import 'package:fulcrum/application/widgets/images/custom_logo.dart';
import 'package:fulcrum/application/widgets/loader/spinner_loader.dart';
import 'package:fulcrum/features/home/presentation/home_screen.dart';
import '../bloc/splash_bloc.dart';
import '../bloc/splash_state.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = '/splash';
  static const String screenName = 'splashScreen';

  static ModalRoute<SplashScreen> route() => MaterialPageRoute<SplashScreen>(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const SplashScreen(),
      );

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  late double width;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<SplashBloc>().loadSplashScreen();

  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;

    return BlocConsumer<SplashBloc, SplashState>(listener: (BuildContext context, SplashState state) {
      if (!state.isLoading) {
        if (state.isLoggedIn) {
          Navigator.of(context).pushReplacement(
            HomeScreen.route(),
          );
        }
      }
    }, builder: (BuildContext context, SplashState state) {
      return const Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: SpinnerLoader(backgroundColor: AppColors.primary,),
            )
          ],
        ),
      );
    });
  }
}
