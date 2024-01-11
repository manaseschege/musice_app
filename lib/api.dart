import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Api {
  final dio = Dio(BaseOptions(
    baseUrl: "localhost://5000",
    connectTimeout: Duration(seconds: 10),
    contentType: Headers.jsonContentType,
    responseType: ResponseType.json,
  ));
  String userName = "manasses";
  String password = "123456";
  String baseAuth = "";

  Api() {
    baseAuth = base64Encode(utf8.encode("$userName: $password"));
  }

  dynamic getData() async {
    dio.get("/songs",
        options: Options(headers: {"Authorization":" Bearer ${await getToken()}"}));
    final resp = await dio.get("/songs");
    if (resp.statusCode == 200) {
      print("oops there was an error");
    }
  }

  Future postData(String email, String password) async {
    String url = "\login";
    SharedPreferences pref = await SharedPreferences.getInstance();

    var data1 = {email: email, password: password};
    dio
        .post(url,
            data: data1,
            options: Options(headers: {
              "Authorization": baseAuth,
            }))
        .then((value) => {
              pref.setString('bearerToken', value.data['bearerToken']),
              print(value.data['bearerToken'])
            })
        .onError((error, stackTrace) => {});
  }

  Future register(String email, String fullName, String password,
      String phoneNumber) async {
    String url = "\login";
    var data1 = {
      email: email,
      password: password,
      fullName: fullName,
      phoneNumber: phoneNumber
    };
    dio
        .post(url, data: data1)
        .then((value) => {value})
        .onError((error, stackTrace) => {});
  }

  Future<String> getToken() async {
    SharedPreferences token = await SharedPreferences.getInstance();
    final result = token.getString("bearerToken").toString();
    return result.toString();
  }
}
