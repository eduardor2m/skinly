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
      var userName = await UserDao().getName();
      if (userName != null) {
        var user = await UserDao().getUser(userName.toString());

        if (user.logged == 'true') {
          Navigator.pushReplacementNamed(context, '/my-avatars',
              arguments: userName);
        } else if (user.logged == "false") {
          Navigator.pushReplacementNamed(context, '/login');
        }
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
