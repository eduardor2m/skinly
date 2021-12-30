import 'package:shared_preferences/shared_preferences.dart';

class UserDao {
  Future<void> saveUser(
      String userName, String userEmail, String userPassword) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    await preferences.setString("userName", userName);
    await preferences.setString("userEmail", userEmail);
    await preferences.setString("userPassword", userPassword);
  }

  Future<String?> getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? userName = preferences.getString('userName');

    return userName;
  }

  Future<bool> login(String userEmail, String userPassword) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    String? userEmailPreferences = preferences.getString('userEmail');
    String? userPasswordPreferences = preferences.getString('userPassword');

    if (userEmail == userEmailPreferences &&
        userPassword == userPasswordPreferences) {
      return true;
    } else {
      return false;
    }
  }
}
