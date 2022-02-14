import 'package:skinly/data/database_helper.dart';
import 'package:skinly/data/models/user_model.dart';
import 'package:sqflite/sqlite_api.dart';

class UserDao {
  Future<void> insertUser(UserModel user) async {
    final db = await DatabaseHelper().database;
    await db!.insert(
      'user',
      user.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<String?> getName() async {
    final db = await DatabaseHelper().database;
    final List<Map<String, dynamic>> maps = await db!.query('user');
    if (maps.length > 0) {
      return maps[0]['name'];
    }
    return null;
  }

  Future<UserModel> getUser(String name) async {
    final db = await DatabaseHelper().database;
    var res = await db!.query('user', where: 'name = ?', whereArgs: [name]);

    return UserModel.fromJson(res[0]);
  }

  Future<bool> login(String userEmail, String userPassword) async {
    final db = await DatabaseHelper().database;
    final List<Map<String, dynamic>> maps = await db!.query('user');
    if (maps.length > 0) {
      return maps[0]['email'] == userEmail &&
          maps[0]['password'] == userPassword;
    }
    return false;
  }

  Future<void> logout() async {
    final db = await DatabaseHelper().database;
    await db!.delete('user');
  }
}
