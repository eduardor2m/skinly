import 'package:flutter/material.dart';
import 'package:skinly/data/dao/avatar_dao.dart';
import 'package:skinly/data/models/avatar_model.dart';
import 'package:skinly/shared/avatar_grid.dart';

class ModelsScreen extends StatefulWidget {
  const ModelsScreen({Key? key}) : super(key: key);

  @override
  _ModelsScreenState createState() => _ModelsScreenState();
}

class _ModelsScreenState extends State<ModelsScreen> {
  late Future<List<AvatarModel>> models;

  buildPageBody() {
    return FutureBuilder<List<AvatarModel>>(
      future: models,
      builder: (context, snapshot) {
        return snapshot.hasData
          ? createAvatarGrid(snapshot.data, '/build-avatar', haveBlank: true)
          : Center(child: CircularProgressIndicator());
      }
    );
  }

  @override
  void initState() {
    super.initState();
    models = AvatarDao().loadModels();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_outlined, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Color(0xffffffff),
            shadowColor: Color.fromRGBO(0, 0, 0, 0),
            titleSpacing: 0,
            title: Text(
              'Escolher Modelo',
              style: TextStyle(color: Color(0xff000000)),
            ),
          ),
          body: buildPageBody(),
        ),
      ),
    );
  }
}
