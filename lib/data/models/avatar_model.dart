class AvatarModel {
  late int _id;
  late String _name;
  late String _url;
  late String _genre;
  late String _age;
  late String _createdAt;
  late int _saved;

  AvatarModel({
    required int id,
    required String name,
    required String url,
    required String genre,
    required String age,
    required String createdAt,
    required int saved
  }) {
    this._id = id;
    this._name = name;
    this._url = url;
    this._genre = genre;
    this._age = age;
    this._createdAt = createdAt;
    this._saved = saved;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  String get url => _url;
  set url(String url) => _url = url;
  String get genre => _genre;
  set genre(String genre) => _genre = genre;
  String get age => _age;
  set age(String age) => _age = age;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  int get saved => _saved;
  set saved(int saved) => _saved = saved;

  AvatarModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _url = json['url'];
    _genre = json['genre'];
    _age = json['age'];
    _createdAt = json['created_at'];
    _saved = json['saved'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this._id;
    data['name'] = this._name;
    data['url'] = this._url;
    data['genre'] = this._genre;
    data['age'] = this._age;
    data['created_at'] = this._createdAt;
    data['saved'] = this._saved;
    
    return data;
  }
}
