import 'package:skinly/data/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class UserDao {
  Future<void> saveName(String userName) async {
    DatabaseHelper databaseHelper = DatabaseHelper();
    Database? database = await databaseHelper.database;

    String sql = 'INSERT INTO user VALUES (?)';

    await database?.execute(sql, [userName]);
  }

  Future<List<Map<String, Object?>>?> getName() async {
    DatabaseHelper databaseHelper = DatabaseHelper();
    Database? database = await databaseHelper.database;

    List<Map<String, Object?>>? userName = await database?.query(
      'user',
      columns: ['name'],
      limit: 1,
    );

    return userName;
  }
}