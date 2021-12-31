import 'package:flutter/material.dart';
import 'package:skinly/data/dao/user_dao.dart';
import 'package:skinly/widgets/input_widget.dart';
import 'package:skinly/widgets/primary_button_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final userEmailController = TextEditingController();
  final userPasswordController = TextEditingController();

  Future<void> handleLogin() async {
    String userEmail = userEmailController.text;
    // String userPassword = userPasswordController.text;

    // await UserDao().login(userEmail, userPassword);

    Navigator.pushReplacementNamed(context, '/my-avatars',
        arguments: userEmail);
  }

  Future<void> handleRegister() async {
    Navigator.pushReplacementNamed(context, '/welcome');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Olá!',
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 80),
                Text('Efetue o login para continuar',
                    style: TextStyle(fontSize: 18)),
                SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      InputWidget(
                          label: 'Seu email', controller: userEmailController),
                      SizedBox(height: 10),
                      InputWidget(
                          label: 'Sua senha',
                          controller: userPasswordController),
                      SizedBox(height: 100),
                      PrimaryButtonWidget(
                        action: () {
                          if (_formKey.currentState!.validate()) {
                            handleLogin();
                          }
                        },
                        text: 'Entrar',
                        icon: Icon(Icons.chevron_right_rounded),
                      ),
                      SizedBox(height: 10),
                      PrimaryButtonWidget(
                        action: () {
                          handleRegister();
                        },
                        text: 'Cadastrar',
                        icon: Icon(Icons.chevron_right_rounded),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
