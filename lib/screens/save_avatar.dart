import 'package:flutter/material.dart';

class SaveAvatarScreen extends StatefulWidget {
  const SaveAvatarScreen({ Key? key }) : super(key: key);

  @override
  _SaveAvatarScreenState createState() => _SaveAvatarScreenState();
}

class _SaveAvatarScreenState extends State<SaveAvatarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xffffffff),
        shadowColor: Color.fromRGBO(0, 0, 0, 0),
        titleSpacing: 0,
        title: Text(
          'Salvar',
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
    );
  }
}