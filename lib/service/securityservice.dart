import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:securityvisitorapp/model/securitymodel.dart';
class securityApiService{
  Future<dynamic> login(
      String eMail,
      String password) async{
    var client=http.Client();
    var apiurl=Uri.parse("http://172.16.181.241:3001/api/security/signin");
    var response=await client.post(apiurl,
        headers: <String,String>{
          "Content-Type" : "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        {

          "eMail": eMail,
          "password": password

        }
        )
    );
    if(response.statusCode==200)
    {
      return jsonDecode(response.body);
    }
    else
    {
      throw Exception("Failed to send data");
    }

  }

  Future<dynamic> sendData(
  String name,
  String empId,
  String address,
  String mobileNo,
  String eMail,
  String password) async{
    var client=http.Client();
    var apiurl=Uri.parse("http://172.16.181.241:3001/api/security/signup");
    var response=await client.post(apiurl,
        headers: <String,String>{
          "Content-Type" : "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        {
          "name": name,
          "empId": empId,
          "address": address,
          "mobileNo": mobileNo,
          "eMail": eMail,
          "password": password

        } )
    );

    if(response.statusCode==200)
    {
      return jsonDecode(response.body);
    }
    else
    {
      throw Exception("Failed to send data");
    }

  }
  Future<List<Security>> viewSecurity() async{
    var client=http.Client();
    var apiurl=Uri.parse("http://172.16.181.241:3001/api/security/viewall");
    var response=await client.get(apiurl);
    if(response.statusCode==200)
    {
      var resp = response.body;
      return securityFromJson(resp);
    }
    else
    {
      return [];
    }
  }


}