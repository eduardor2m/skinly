import 'package:flutter/material.dart';

class SocialNetworksScreen extends StatefulWidget {
  const SocialNetworksScreen({Key? key}) : super(key: key);

  @override
  _SocialNetworksScreenState createState() => _SocialNetworksScreenState();
}

class _SocialNetworksScreenState extends State<SocialNetworksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            const Text(
              'Nos encontre aqui!',
              style: TextStyle(
                color: Color(0xffffffff),
                height: 8,
                fontSize: 35,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('INSTAGRAM'),
            ),
            const Text(
              'Compartilhe suas criações ou ',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xffffffff),
                height: 5,
                fontSize: 15,
              ),
            ),
            const Text(
              'ache inspiração em nosso painel no Padlet. ',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xffffffff),
                height: 1,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {},
              child: const Text('MURAL'),
            ),
            const SizedBox(height: 100),
            TextButton(
              onPressed: () {},
              child: const Text('PULAR >'),
            ),
          ],
        ),
      ),
    );
  }
}