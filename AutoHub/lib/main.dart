import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:autohub/l10n/app_localizations.dart';

import 'package:autohub/providers/theme_provider.dart';
import 'package:autohub/providers/language_provider.dart';

import 'firebase_options.dart';

import 'package:autohub/helpers/scroll_behavior.dart';

// SCREENS
import 'package:autohub/screens/splash_screen.dart';
import 'package:autohub/screens/sign_in_screen.dart';
import 'package:autohub/screens/sign_up_screen.dart';
import 'package:autohub/screens/main_screen.dart';
import 'package:autohub/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(  MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) => LanguageProvider(),
      ),
    ],
    child: const MyApp(),
  ),
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final languageProvider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      title: 'Movie App',
      debugShowCheckedModeBanner: false,
     themeMode: themeProvider.themeMode,

      theme: ThemeData(
<<<<<<< Updated upstream
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
=======
        useMaterial3: true,
        cardTheme: const CardThemeData(
          color: Colors.white,
          surfaceTintColor: Colors.transparent,
>>>>>>> Stashed changes
        ),
        useMaterial3: true,
      ),

      darkTheme: ThemeData.dark(),

      locale: languageProvider.locale,

      supportedLocales: const [
        Locale('id'),
        Locale('en'),
      ],

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // APP STARTS HERE
      initialRoute: '/',

      routes: {
        '/': (context) => const SplashScreen(),
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/main': (context) => const MainScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
