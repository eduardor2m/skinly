import 'package:flutter/material.dart';
import 'package:skinly/data/models/avatar_model.dart';
import 'package:skinly/widgets/primary_button_widget.dart';
import 'package:skinly/widgets/secondary_button_widget.dart';

class ExportScreen extends StatefulWidget {
  @override
  _ExportScreenState createState() => _ExportScreenState();
}

class _ExportScreenState extends State<ExportScreen> {
  @override
  Widget build(BuildContext context) {
    AvatarModel avatar = ModalRoute.of(context)!.settings.arguments as AvatarModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        shadowColor: Color.fromRGBO(0, 0, 0, 0),
        title: Text(
          'Exportar Personagem',
          style: TextStyle(
            color: Color(0xff000000),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Color(0xff000000),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(avatar.url),
            SizedBox(height: 15),
            Text(avatar.name, style: TextStyle(fontSize: 18)),
            SizedBox(height: 25),
            SecondaryButtonWidget(
              text: 'JPEG',
              action: () {},
            ),
            SizedBox(height: 15),
            SecondaryButtonWidget(
              text: 'PNG',
              action: () {},
            ),
            SizedBox(height: 15),
            SecondaryButtonWidget(
              text: 'SVG',
              action: () {},
            ),
            SizedBox(height: 15),
            PrimaryButtonWidget(
              text: 'Compartilhar',
              action: () {},
            ),
          ],
        ),
      ),
    );
  }
}
