import 'package:flutter/material.dart';

class BuildAvatarScreen extends StatefulWidget {
  const BuildAvatarScreen({ Key? key }) : super(key: key);

  @override
  _BuildAvatarScreenState createState() => _BuildAvatarScreenState();
}

class _BuildAvatarScreenState extends State<BuildAvatarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close_outlined, color: Colors.black),
          onPressed: () => Navigator.pushReplacementNamed(context, '/my-avatars'),
        ),
        backgroundColor: Color(0xffffffff),
        shadowColor: Color.fromRGBO(0, 0, 0, 0),
        titleSpacing: 0,
        title: Text(
          'Criação do Personagem',
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
    );
  }
}