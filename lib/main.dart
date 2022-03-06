import 'dart:io';
import 'package:flutter/material.dart';
import 'package:skinly/screens/choose_model.dart';
import 'package:skinly/screens/export.dart';
import 'package:skinly/screens/login.dart';
import 'package:skinly/screens/my_avatars.dart';
import 'package:skinly/screens/about.dart';
import 'package:skinly/screens/splash.dart';
import 'package:skinly/screens/signup.dart';
import 'package:skinly/screens/avatar_informations.dart';
import 'package:skinly/screens/build_avatar.dart';
import 'package:skinly/screens/save_avatar.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/signup': (context) => SignupScreen(),
        '/login': (context) => LoginScreen(),
        '/my-avatars': (context) => MyAvatarsScreen(),
        '/choose-model': (context) => ModelsScreen(),
        '/export': (context) => ExportScreen(),
        '/avatar-informations': (context) => AvatarInformationsScreen(),
        '/build-avatar': (context) => BuildAvatarScreen(),
        '/save-avatar': (context) => SaveAvatarScreen(),
        '/about': (context) => AboutScreen(),
      },
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
