import 'package:flutter/material.dart';
import 'package:skinly/widgets/model_avatar_widget.dart';

class BuildAvatarScreen extends StatefulWidget {
  const BuildAvatarScreen({ Key? key }) : super(key: key);

  @override
  _BuildAvatarScreenState createState() => _BuildAvatarScreenState();
}

class _BuildAvatarScreenState extends State<BuildAvatarScreen> {
  List<String> modelAvatars = [
    'avatar-2.png',
    'avatar-3.png',
    'avatar-4.png',
    'avatar-5.png',
  ];

  List<Widget> generateModelAvatars() {
    List<Widget> result = [];
    int counter = 0;

    while (counter < modelAvatars.length) {
      result.add(
        ModelAvatarWidget(image: modelAvatars[counter]),
      );
      counter++;
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close_outlined, color: Colors.black),
          onPressed: () => Navigator.pushReplacementNamed(context, '/my-avatars'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.done_outlined, color: Colors.blue),
            onPressed: () => Navigator.pushNamed(context, '/save-avatar'),
          ),
        ],
        backgroundColor: Color(0xffffffff),
        shadowColor: Color.fromRGBO(0, 0, 0, 0),
        titleSpacing: 0,
        title: Text(
          'Criação do Personagem',
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset('assets/avatar-1.png'),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: generateModelAvatars(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}