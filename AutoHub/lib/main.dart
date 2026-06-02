import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:autohub/helpers/scroll_behavior.dart';
import 'package:provider/provider.dart';
import 'package:autohub/providers/theme_provider.dart';
import 'package:autohub/providers/language_provider.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// SCREENS
import 'package:autohub/screens/splash_screen.dart';
import 'package:autohub/screens/sign_in_screen.dart';
import 'package:autohub/screens/sign_up_screen.dart';
import 'package:autohub/screens/main_screen.dart';
import 'package:autohub/screens/home_screen.dart';

/// =====================
/// GLOBAL NOTIFICATION
/// =====================
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

/// =====================
/// MAIN
/// =====================
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await initNotifications();

  runApp(
    MultiProvider(
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

/// =====================
/// INIT NOTIFICATION
/// =====================
Future<void> initNotifications() async {
  // Android settings
  const AndroidInitializationSettings androidSettings =
      AndroidInitializationSettings(
    '@mipmap/ic_launcher',
  );

  const InitializationSettings settings =
      InitializationSettings(
    android: androidSettings,
  );

  await flutterLocalNotificationsPlugin.initialize(
    settings,
  );

  // Request permission Android 13+
  final androidPlugin =
      flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

  await androidPlugin?.requestNotificationsPermission();

  // Create notification channel
  const AndroidNotificationChannel channel =
      AndroidNotificationChannel(
    'komentar_channel',
    'Komentar Notification',
    description:
        'Notifikasi komentar berhasil dikirim',
    importance: Importance.max,
  );

  await androidPlugin
      ?.createNotificationChannel(channel);
}

/// =====================
/// SHOW NOTIFICATION
/// =====================
Future<void> showThankYouNotification() async {
  const AndroidNotificationDetails
      androidDetails =
      AndroidNotificationDetails(
    'komentar_channel',
    'Komentar Notification',
    channelDescription:
        'Notifikasi komentar berhasil',
    importance: Importance.max,
    priority: Priority.high,
    playSound: true,
    enableVibration: true,
  );

  const NotificationDetails details =
      NotificationDetails(
    android: androidDetails,
  );

  await flutterLocalNotificationsPlugin.show(
    0,
    'Terima kasih 🙏',
    'Komentar kamu berhasil dikirim',
    details,
  );
}

/// =====================
/// APP
/// =====================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider =
        context.watch<ThemeProvider>();

    final languageProvider =
        context.watch<LanguageProvider>();

    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,

      themeMode:
          themeProvider.themeMode,

      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed:
            Colors.blue,
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed:
            Colors.blue,
      ),

      locale:
          languageProvider.locale,

      initialRoute: '/',

      routes: {
        '/': (context) =>
            const SplashScreen(),
        '/signin': (context) =>
            const SignInScreen(),
        '/signup': (context) =>
            const SignUpScreen(),
        '/main': (context) =>
            const MainScreen(),
        '/home': (context) =>
            const HomeScreen(),
      },
    );
  }
}