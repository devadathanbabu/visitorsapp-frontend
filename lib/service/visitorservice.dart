import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:securityvisitorapp/model/visitormodel.dart';
class visitorApiService{
  Future<dynamic> addVisitor(

    String name,
    String purpose,
    String address,
    String phoneNo
      )async {
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.1.3:3001/api/visitor/add");
    var response=await client.post(apiurl,
        headers: <String,String>{
          "Content-Type" : "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        {

          "name": name,
          "purpose": purpose,
          "address": address,
          "phoneNo": phoneNo,

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
  Future<List<Visitor>> viewVisitor() async{
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.1.3:3001/api/visitor/viewall");
    var response=await client.get(apiurl);
    if(response.statusCode==200)
    {
      return visitorFromJson(response.body);
    }
    else
    {
      return [];
    }
  }
}
