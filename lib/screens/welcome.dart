import 'package:flutter/material.dart';
import 'package:skinly/data/dao/user_dao.dart';
import 'package:skinly/data/models/user_model.dart';
import 'package:skinly/widgets/input_widget.dart';
import 'package:skinly/widgets/primary_button_widget.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final userEmailController = TextEditingController();
  final userPasswordController = TextEditingController();

  Future<void> saveUser() async {
    String userName = userNameController.text;
    String userEmail = userEmailController.text;
    String userPassword = userPasswordController.text;

    var user =
        UserModel(name: userName, email: userEmail, password: userPassword);

    await UserDao().insertUser(user);
    Navigator.pushReplacementNamed(context, '/login', arguments: userName);
  }

  Future<void> handleLogin() async {
    Navigator.pushReplacementNamed(context, '/login');
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
                Text('Efetue o cadastro para continuar',
                    style: TextStyle(fontSize: 18)),
                SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      InputWidget(
                          label: 'Seu nome', controller: userNameController),
                      SizedBox(height: 10),
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
                            saveUser();
                          }
                        },
                        text: 'Cadastrar',
                        icon: Icon(Icons.chevron_right_rounded),
                      ),
                      SizedBox(height: 10),
                      PrimaryButtonWidget(
                        action: () {
                          handleLogin();
                        },
                        text: 'Login',
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
