import 'package:azkar_app/screens/about_screen.dart';
import 'package:azkar_app/screens/home_screen.dart';
import 'package:azkar_app/screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
      ],
      locale: const Locale('ar'),
      //home: LaunchScreen(),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/home_screen': (context) => HomeScreen(),
        '/about_screen':(context)=> const AboutScreen(),
      },
    );
  }
}
