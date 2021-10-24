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
      var user = await UserDao().getName();

      if (user?.length != 0) {
        Navigator.pushReplacementNamed(
          context,
          '/my-avatars',
          arguments: user?[0]['name'],
        );
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
