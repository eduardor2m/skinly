class UserModel {
  late int _id;
  late String _name;
  late String _email;
  late String _password;
  late String _createdAt;
  late int _saved;

  UserModel(
      {required int id,
      required String name,
      required String email,
      required String password,
      required String createdAt,
      required int saved}) {
    this._id = id;
    this._name = name;
    this._email = email;
    this._password = password;
    this._createdAt = createdAt;
    this._saved = saved;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  String get email => _email;
  set url(String email) => _email = email;
  String get password => _password;
  set age(String password) => _password = password;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  int get saved => _saved;
  set saved(int saved) => _saved = saved;

  UserModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _password = json['password'];
    _createdAt = json['created_at'];
    _saved = json['saved'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this._id;
    data['name'] = this._name;
    data['email'] = this._email;
    data['password'] = this._password;
    data['created_at'] = this._createdAt;
    data['saved'] = this._saved;

    return data;
  }
}
