import 'package:skinly/data/database_helper.dart';
import 'package:skinly/data/models/avatar_model.dart';
import 'package:sqflite/sqflite.dart';

class AvatarDao {
  Future<List<AvatarModel>> loadSavedAvatars() async {
    return await _fetchAvatars('SELECT * FROM avatars WHERE saved = 1 AND model = 0');
  }

  Future<List<AvatarModel>> loadUnsavedAvatars() async {
    return await _fetchAvatars('SELECT * FROM avatars WHERE saved = 0 AND model = 0');
  }

  Future<List<AvatarModel>> loadModels() async {
    return await _fetchAvatars('SELECT * FROM avatars WHERE model = 1');
  }

  Future<List<AvatarModel>> _fetchAvatars(String query) async {
    DatabaseHelper databaseHelper = DatabaseHelper();
    Database? database = await databaseHelper.database;
    List<AvatarModel> avatars = <AvatarModel>[];

    var result = await database?.rawQuery(query) ?? [];
    
    for (var json in result) {
      AvatarModel avatar = AvatarModel.fromJson(json);
      avatars.add(avatar);
    }

    return avatars;
  }
}