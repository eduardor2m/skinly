import 'package:flutter/material.dart';
import 'package:skinly/data/dao/avatar_dao.dart';
import 'package:skinly/data/dao/user_dao.dart';
import 'package:skinly/data/models/avatar_model.dart';
import 'package:skinly/shared/avatar_grid.dart';

class MyAvatarsScreen extends StatefulWidget {
  const MyAvatarsScreen({Key? key}) : super(key: key);

  @override
  _MyAvatarsScreenState createState() => _MyAvatarsScreenState();
}

class _MyAvatarsScreenState extends State<MyAvatarsScreen> {
  late Future<List<AvatarModel>> savedAvatars;
  late Future<List<AvatarModel>> unsavedAvatars;
  String userName = '';

  Future<void> logout() async {
    await UserDao().logout();
    Navigator.pushReplacementNamed(context, '/login');
  }

  buildGridView(avatars, route, message) {
    return FutureBuilder<List<AvatarModel>>(
        future: avatars,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return (snapshot.data?.length == 0)
                ? showInstructionMessage(message, userName)
                : createAvatarGrid(snapshot.data, route);
          }

          return Center(child: CircularProgressIndicator());
        });
  }

  @override
  void initState() {
    super.initState();
    savedAvatars = AvatarDao().loadSavedAvatars();
    unsavedAvatars = AvatarDao().loadUnsavedAvatars();
  }

  @override
  Widget build(BuildContext context) {
    userName = ModalRoute.of(context)!.settings.arguments as String;

    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffffffff),
            shadowColor: Color.fromRGBO(0, 0, 0, 0),
            titleSpacing: 0,
            title: Text(
              'Meus Personagens',
              style: TextStyle(
                color: Color(0xff000000),
              ),
            ),
            bottom: TabBar(
              labelPadding: EdgeInsets.symmetric(vertical: 7),
              labelColor: Color(0xff0077B6),
              labelStyle: TextStyle(fontWeight: FontWeight.w500),
              tabs: [
                Text('Salvos'),
                Text('Rascunhos'),
              ],
            ),
            leading: Icon(
              Icons.groups,
              color: Color(0xff000000),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/choose-model');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.add_rounded, color: Color(0xff0077B6)),
                      Text(
                        'Novo',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff0077B6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  logout();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.exit_to_app,
                          color: Color.fromARGB(255, 182, 0, 9)),
                      Text(
                        'Sair',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 182, 0, 9),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              buildGridView(savedAvatars, '/export', 'personagens salvos'),
              buildGridView(unsavedAvatars, '/build-avatar', 'rascunhos'),
            ],
          ),
        ),
      ),
    );
  }
}
