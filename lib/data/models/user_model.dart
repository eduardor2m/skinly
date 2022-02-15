class UserModel {
  late String _name;
  late String _email;
  late String _password;
  late String _logged;

  UserModel({
    required String name,
    required String email,
    required String password,
    required String logged,
  }) {
    this._name = name;
    this._email = email;
    this._password = password;
    this._logged = logged;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get email => _email;
  set url(String email) => _email = email;
  String get password => _password;
  set age(String password) => _password = password;
  String get logged => _logged;
  set logged(String logged) => _logged = logged;

  UserModel.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _email = json['email'];
    _password = json['password'];
    _logged = json['logged'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this._name;
    data['email'] = this._email;
    data['password'] = this._password;
    data['logged'] = this._logged;

    return data;
  }
}
