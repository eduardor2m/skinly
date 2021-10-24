import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  Database? _database;

  Future<Database?> get database async {
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'avatars.db');

    var database = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );

    return database;
  }

  Future<void> _onCreate(Database database, int version) async {
    String sql = 'CREATE TABLE avatars (id INT PRIMARY KEY, name varchar(200), url varchar(200), genre varchar(50), age varchar(50), created_at DATETIME, saved BOOLEAN, model BOOLEAN)';
    await database.execute(sql);

    sql = 'CREATE TABLE user (name varchar(100))';
    await database.execute(sql);

    sql = 'INSERT INTO avatars VALUES ("1", "Ana", "https://cdn4.iconfinder.com/data/icons/occupation-and-people-avatar-vol-2-1/128/woman_report_occupation_female_people_avatar_journalist-128.png", "Feminino", "Adulto", "2021-10-20 19:00:00", 1, 0)';
    await database.execute(sql);

    sql = 'INSERT INTO avatars VALUES ("2", "Carlos", "https://cdn4.iconfinder.com/data/icons/occupation-and-people-avatar-vol-2-1/128/man_avatar_freelancer_career_people_male_hipster-128.png", "Masculino", "Adulto", "2021-10-20 19:00:00", 1, 0)';
    await database.execute(sql);

    sql = 'INSERT INTO avatars VALUES ("3", "", "https://cdn4.iconfinder.com/data/icons/occupation-and-people-avatar-vol-2-1/128/Woman_avatar_assistant_career_people_female_occupation-128.png", "Feminino", "Jovem", "2021-10-20 19:00:00", 0, 0)';
    await database.execute(sql);

    sql = 'INSERT INTO avatars VALUES ("4", "", "https://cdn4.iconfinder.com/data/icons/occupation-and-people-avatar-vol-2-1/128/man_avatar_user_old_people_senior_elderly-128.png", "Masculino", "Idoso", "", 0, 1)';
    await database.execute(sql);

    sql = 'INSERT INTO avatars VALUES ("5", "", "https://cdn4.iconfinder.com/data/icons/diversity-v2-0-volume-03/64/business-casual-black-female-128.png", "Feminino", "Adulto", "", 0, 1)';
    await database.execute(sql);

    sql = 'INSERT INTO avatars VALUES ("6", "", "https://cdn4.iconfinder.com/data/icons/diversity-v2-0-volume-03/64/footballer-soccer-aguero-argentina-mancity-128.png", "Masculino", "Adulto", "", 0, 1)';
    await database.execute(sql);

    sql = 'INSERT INTO avatars VALUES ("7", "", "https://cdn2.iconfinder.com/data/icons/diversity-v2-0-volume-01/64/aging-adolescent-black-male-128.png", "Masculino", "Jovem", "", 0, 1)';
    await database.execute(sql);

    sql = 'INSERT INTO avatars VALUES ("8", "", "https://cdn4.iconfinder.com/data/icons/occupation-and-people-avatar-vol-2-1/128/woman_avatar_user_old_people_female_elderly-128.png", "Feminino", "Idoso", "", 0, 1)';
    await database.execute(sql);
  }
}