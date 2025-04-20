import 'package:dio/dio.dart';
import 'package:flutter_auth_login_api/models/login_request_model.dart';
import 'package:flutter_auth_login_api/models/login_response_model.dart';

class ApiService {
  final baseURL = 'https://dummyjson.com';
  final dio = Dio();

  Future<LoginResponseModel> login(LoginRequestModel requestBody) async {
    final response = await dio.post(
      '$baseURL/auth/login',
      data: requestBody.toJson(),
    );
    return LoginResponseModel.fromJson(response.data);
  }
}
