class UserModel {
  late String _name;
  late String _email;
  late String _password;

  UserModel({
    required String name,
    required String email,
    required String password,
  }) {
    this._name = name;
    this._email = email;
    this._password = password;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get email => _email;
  set url(String email) => _email = email;
  String get password => _password;
  set age(String password) => _password = password;

  UserModel.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _email = json['email'];
    _password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this._name;
    data['email'] = this._email;
    data['password'] = this._password;

    return data;
  }
}
