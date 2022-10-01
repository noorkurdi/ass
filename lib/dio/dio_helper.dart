import 'dart:convert';

import 'package:assist_app/core/utils/app_strings.dart';
import 'package:assist_app/status_request.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'end_pionts.dart';

class DioHelper {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: AppStrings.baseUrl,
      receiveDataWhenStatusError: true,
      headers: {
        "Accept": "application/json",
        "Connection": 'keep-alive',
      },
    ),
  );

  static Future<Response> login({
    required Map<String, dynamic> data,
  }) async {
    return await dio.post(
      LOGIN,
      data: data,
    );
  }

  static Future<Response> register({
    required Map<String, dynamic> data,
  }) async {
    return await dio.post(
      REGISTER,
      data: FormData.fromMap(data),
    );
  }

  static Future<Response> editUserById(
      {required Map<String, dynamic> data, required int id}) async {
    return await dio.post("$EDIT$id", data: FormData.fromMap(data));
  }

  static Future<Response> profile() async {
    return await dio.post(ME,
        options:
            Options(headers: {'Authorization': 'Bearer $AppStrings.token'}));
  }

  static Future<Response> logOut(String token) async {
    return await dio.post(LOGOUT,
        options: Options(headers: {'Authorization': 'Bearer $token'}));
  }

  static Future<Either<StatusRequest, Map>> postData(
      {required String url, required Map<String, dynamic> data}) async {
    try {
      Response response = await dio.post(url, data: data);
      if (response.statusCode == 200) {
        Map responseBody = jsonDecode(response.toString());
        print(responseBody);
        return Right(responseBody);
      } else {
        return const Left(StatusRequest.serverFailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverExeption);
    }
  }
}
