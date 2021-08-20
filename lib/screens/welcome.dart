import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      fontSize: 32,
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
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Seu nome',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 100),
                    ElevatedButton(
                      onPressed: () {
                        // TEMP!
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('COMEÇAR'),
                            SizedBox(width: 10),
                            Icon(Icons.chevron_right_rounded),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
