
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fulcrum/application/providers/bloc_providers.dart';
import 'package:fulcrum/features/splash/bloc/splash_bloc.dart';
import 'package:fulcrum/features/splash/bloc/splash_state.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'application/utils/app_colors.dart';
import 'features/splash/presentation/splash_screen.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();

}

class MyAppState extends State<MyApp> {
  late GlobalKey<NavigatorState> navigatorKey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigatorKey = GlobalKey<NavigatorState>();
  }

  @override
  Widget build(BuildContext context) {
    final List<SingleChildWidget> blocs = BlocsProvider.provide();

    List<SingleChildWidget> providers = <SingleChildWidget>[
      ...blocs,
    ];
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MultiProvider(
        providers: providers,
        child: BlocConsumer<SplashBloc, SplashState>(
          listener: (BuildContext context, SplashState state) {

            /*if (!state.isLoading && state.hasError) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                showCustomDialog(
                  navigatorKey.currentState!.context,
                  type: IconType.error,
                  title: 'Failed',
                  content: state.errorMessage,
                  confirmButtonText: 'Close',
                  onConfirm: () {
                    Navigator.of(navigatorKey.currentState!.context).pop();
                  },
                );
              });
            }*/
          },
          builder: (BuildContext context, __) => MaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            theme: lightMode(),
            themeMode: ThemeMode.system,
            home: const SplashScreen(),
          ),
        ),
      ),
    );
  }


  ThemeData lightMode() {
    return ThemeData(
      // Defining the ColorScheme using AppColors
      colorScheme: const ColorScheme(
        primary: AppColors.primary, // Soft Blue
        secondary: AppColors.success, // Bright Green for success actions
        surface: AppColors.background, // White for surface areas (e.g., cards)
        onPrimary: AppColors.primaryContrast, // White text on primary elements
        onSecondary: AppColors.primaryContrast, // White text on secondary elements
        error: AppColors.error, // Soft Red for errors
        onError: AppColors.primaryContrast, // White text on error elements
        onSurface: AppColors.textColor, // Dark Gray for text on surfaces
        brightness: Brightness.light, // Define light theme
      ),

      scaffoldBackgroundColor: AppColors.background, // Set background color

      // App bar theme using AppColors
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary, // Soft Blue AppBar
        titleTextStyle: TextStyle(
          color: AppColors.primaryContrast, // White text on AppBar
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: AppColors.primaryContrast), // White icons in AppBar
      ),

      // Button theme using AppColors
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary, // Soft Blue for buttons
          foregroundColor: AppColors.primaryContrast, // White text on buttons
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Floating Action Button theme using AppColors
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary, // Soft Blue FAB
        foregroundColor: AppColors.primaryContrast, // White icon
      ),

      // Bottom navigation bar theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.surface, // White for bottom navigation bar
        selectedItemColor: AppColors.primary, // Soft Blue for selected items
        unselectedItemColor: AppColors.secondaryText, // Light Gray for unselected items
      ),

      // Input decoration theme for text fields
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface, // White background for input fields
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: AppColors.secondaryText, // Light Gray border
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: AppColors.secondaryText, // Light Gray border
          ),
        ),
        hintStyle: const TextStyle(
          color: AppColors.secondaryText, // Light Gray hint text
        ),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.success, // Bright Green for progress indicators
      ),
    );
  }


}