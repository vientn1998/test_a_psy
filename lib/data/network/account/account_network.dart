import 'dart:io';

import 'package:dio/dio.dart';
import 'package:shapee_project/app/constants_enviroment.dart';
import 'package:shapee_project/constant/app_api_endpoint.dart';
import 'package:shapee_project/models/api_public.dart';
import 'package:shapee_project/models/user_obj.dart';
class AccountNetwork {

  final Dio _dio = Dio();

  Future<ApiPublic<DataUser>> loginEmailPassword(String email, String password) async{
    final params = {
      'email': email,
      'password': password
    };
    try {
      final response = await _dio.post<dynamic>(
        Constants.serverAPI + LOGIN_EMAIL_PASSWORD,
        data: params,
        options: Options(
          followRedirects: false,
          validateStatus: (status) => status < 500,
        ),
      );
      return ApiPublic<DataUser>.fromJson(response.data as Map<String, dynamic>);
    } catch (error, stacktrace) {
      print('Error occurred $error\n Stacktrace: $stacktrace}');
      return ApiPublic<DataUser>();
    }
  }

  Future<ApiPublic<DataUser>> getUser(String token) async{
    try {
      final response = await _dio.get<dynamic>(
        Constants.serverAPI + GET_USER,
        options: Options(
          headers: {
            HttpHeaders.authorizationHeader: 'Bearer $token',
          }
        )
      );
      return ApiPublic<DataUser>.fromJson(response.data as Map<String, dynamic>);
    } catch (error, stacktrace) {
      print('Error occurred $error\n Stacktrace: $stacktrace}');
      return ApiPublic<DataUser>();
    }
  }

}