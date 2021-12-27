import 'package:flutter/material.dart';
import 'package:skinly/data/dao/user_dao.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 1500), () async {
      String? userName = await UserDao().getName();

      if (userName != null) {
        Navigator.pushReplacementNamed(context, '/my-avatars', arguments: userName);
      } else {
        Navigator.pushReplacementNamed(context, '/welcome');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xff0077B6),
      child: Center(
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}
