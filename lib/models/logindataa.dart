class Logindata {
  Logindata({
    required this.status,
    required this.message,
    required this.data,
  });
  late final String status;
  late final String message;
  late final Data data;

  Logindata.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.isActive,
  });
  late final String id;
  late final String username;
  late final String email;
  late final String password;
  late final String isActive;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    isActive = json['is_active'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['username'] = username;
    _data['email'] = email;
    _data['password'] = password;
    _data['is_active'] = isActive;
    return _data;
  }
}