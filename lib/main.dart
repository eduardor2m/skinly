import 'package:flutter/material.dart';
import 'package:skinly/screens/Models.dart';
import 'package:skinly/screens/export.dart';
import 'package:skinly/screens/home.dart';
import 'package:skinly/screens/splash.dart';
import 'package:skinly/screens/welcome.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/export',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/home': (context) => HomeScreen(),
        '/Models': (context) => ModelsScreen(),
        '/export': (context) => ExportScreen(),
      },
    ),
  );
}
