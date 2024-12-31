

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fulcrum/features/home/bloc/home_bloc.dart';
import 'package:fulcrum/features/splash/bloc/splash_bloc.dart';
import 'package:provider/single_child_widget.dart';

class BlocsProvider {
  static List<SingleChildWidget> provide() =>
      <SingleChildWidget>[
        BlocProvider<SplashBloc>(
          create: (_) => SplashBloc(),
        ),
        BlocProvider<HomeBloc>(
          create: (_) => HomeBloc(),
        ),
      ];
}
