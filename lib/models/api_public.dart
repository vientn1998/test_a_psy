import 'package:shapee_project/models/user_obj.dart';

class ApiBasicPublic{

  ApiBasicPublic({
    this.status,
    this.message,
  });

  bool status;
  String message;

  factory ApiBasicPublic.fromJson(Map<String, dynamic> json) => ApiBasicPublic(
    status: json['status'] as bool,
    message: json['message'] as String,
  );
}

class ApiPublic<T> {

  ApiPublic({
    this.status,
    this.data,
    this.message,
  });

  bool status;
  T data;
  String message;

  factory ApiPublic.fromJson(Map<String, dynamic> json) => ApiPublic(
    status: json['status'] as bool,
    data: fromJsonPublic<T>(json['data'] as Map<String, dynamic>),
    message: json['message'] as String,
  );
}

T fromJsonPublic<T>(Map<String, dynamic> json){
  if (T == DataUser) {
    return DataUser.fromJson(json) as T;
  }
  throw Exception('Error in fromJsonPublic');
}