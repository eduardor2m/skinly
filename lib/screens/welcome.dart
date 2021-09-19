import 'package:flutter/material.dart';
import 'package:skinly/widgets/input_widget.dart';
import 'package:skinly/widgets/primary_button_widget.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
                Text(
                  'Como podemos te chamar?',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Form(
                  child: Column(
                    children: [
                      InputWidget(label: 'Seu nome'),
                      SizedBox(height: 100),
                      PrimaryButtonWidget(
                        action: () {
                          Navigator.pushReplacementNamed(
                            context,
                            '/my-avatars',
                          );
                        },
                        text: 'COMEÇAR',
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
