import 'dart:convert';

import 'package:assist_app/core/utils/app_strings.dart';

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

////////////post data

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

  
static Future<Response> addCourse({
    required Map<String, dynamic> data,
  }) async {
    return await dio.post(
      ADDCOURSE,
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

  ///////get data
  ///
  ///
  static Future<Response> getAllUsers() async {
    return await dio.get(
      GETALLUSERS,
    );
  }

  static Future<Response> getAllCourses() async {
    return await dio.get(
      GETALLCOURSES,
    );
  }

  static Future<Response> getAllCourseTypes() async {
    return await dio.get(
      GETALLCOURSETYPES,
    );
  }

  static Future<Response> getAllCertificates() async {
    return await dio.get(GETALLCERTIFICATES);
  }

// static Future<Response> getAllCertificatetypes() async {
//     return await dio.get(
//       GETALLCERTIFICATETYPES
//     );
//   }
}
