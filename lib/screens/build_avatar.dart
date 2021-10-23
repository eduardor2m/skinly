import 'package:flutter/material.dart';
import 'package:skinly/data/dao/avatar_dao.dart';
import 'package:skinly/data/models/avatar_model.dart';
import 'package:skinly/widgets/model_avatar_widget.dart';

class BuildAvatarScreen extends StatefulWidget {
  const BuildAvatarScreen({ Key? key }) : super(key: key);

  @override
  _BuildAvatarScreenState createState() => _BuildAvatarScreenState();
}

class _BuildAvatarScreenState extends State<BuildAvatarScreen> {
  late Future<List<AvatarModel>> models;

  Widget buildModelList() {
    return FutureBuilder<List<AvatarModel>>(
      future: models,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Widget> modelsListBody = [];
          
          for (AvatarModel avatar in snapshot.data!) {
            modelsListBody.add(
              ModelAvatarWidget(image: avatar.url),
            );
          }

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: modelsListBody,
            ),
          );
        }

        return Center(child: CircularProgressIndicator());
      },
    );
  }

  @override
  void initState() {
    super.initState();
    models = AvatarDao().loadModels();
  }

  @override
  Widget build(BuildContext context) {
    AvatarModel avatar = ModalRoute.of(context)!.settings.arguments as AvatarModel;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close_outlined, color: Colors.black),
          onPressed: () => Navigator.pushReplacementNamed(context, '/my-avatars'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.done_outlined, color: Colors.blue),
            onPressed: () => Navigator.pushNamed(context, '/save-avatar', arguments: avatar),
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
                child: Image.network(avatar.url),
              ),
            ),
            buildModelList(),
          ],
        ),
      ),
    );
  }
}