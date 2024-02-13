// To parse this JSON data, do
//
//     final security = securityFromJson(jsonString);

import 'dart:convert';

List<Security> securityFromJson(String str) => List<Security>.from(json.decode(str).map((x) => Security.fromJson(x)));

String securityToJson(List<Security> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Security {
  String id;
  String name;
  String empId;
  String address;
  String mobileNo;
  String eMail;
  String password;
  int v;

  Security({
    required this.id,
    required this.name,
    required this.empId,
    required this.address,
    required this.mobileNo,
    required this.eMail,
    required this.password,
    required this.v,
  });

  factory Security.fromJson(Map<String, dynamic> json) => Security(
    id: json["_id"],
    name: json["name"],
    empId: json["empID"],
    address: json["address"],
    mobileNo: json["mobileNo"],
    eMail: json["eMail"],
    password: json["password"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "empID": empId,
    "address": address,
    "mobileNo": mobileNo,
    "eMail": eMail,
    "password": password,
    "__v": v,
  };
}
