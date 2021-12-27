import 'package:shared_preferences/shared_preferences.dart';

class UserDao {
  Future<void> saveName(String userName) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    
    await preferences.setString('userName', userName);
  }

  Future<String?> getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? userName = preferences.getString('userName');

    return userName;
  }
}