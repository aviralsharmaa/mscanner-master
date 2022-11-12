// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'models/logindataa.dart';
//
//
// class ApiServices{
//
//   Future<logindata> apiCallLogin(json) async{
//     var url = Uri.parse('https://api.msocialin.com/api/Authontication_Controller/login');
//     var response = await http.post(url, body: json);
//     print('Response status: ${response.statusCode}');
//     print('Response ststus: ${response.body}');
//     final data = jsonDecode(response.body);
//     return logindata.fromJson(data);
//
//   }
// }
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<http.Response> callLoginApi() async {
  var url ='https://api.msocialin.com/api/Authontication_Controller/login';

  Map data = {
    'username':
    'password'
  }
  //encode Map to JSON
  var body = json.encode(data);

  var response = await http.post(url,
      headers: {"Content-Type": "application/json"},
      body: body
  );
  print("${response.statusCode}");
  print("