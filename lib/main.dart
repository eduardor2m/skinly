import 'package:flutter/material.dart';
import 'package:skinly/screens/models.dart';
import 'package:skinly/screens/export.dart';
import 'package:skinly/screens/my_avatars.dart';
import 'package:skinly/screens/splash.dart';
import 'package:skinly/screens/welcome.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/my-avatars': (context) => MyAvatarsScreen(),
        '/models': (context) => ModelsScreen(),
        '/export': (context) => ExportScreen(),
      },
    ),
  );
}
