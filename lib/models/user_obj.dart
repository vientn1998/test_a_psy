import 'package:shapee_project/models/keyvalue_obj.dart';

class DataUser {

  DataUser({this.userObj});

  UserObj userObj;

  factory DataUser.fromJson(Map<String, dynamic> json) => DataUser(
    userObj: UserObj.fromJson(json['user']),
  );
}

class UserObj {
  String id;
  String name;
  String token;
  List<KeyValueObj> listRole;

  UserObj({this.id, this.name, this.token, this.listRole});

  factory UserObj.fromJson(Map<String, dynamic> json) => UserObj(
        id: json['id'],
        name: json['name'],
        token: json['token'],
        listRole: List<KeyValueObj>.from(
            json['listRole'].map((j) => KeyValueObj.fromJson(j))),
      );
}
