// To parse this JSON data, do
//
//     final visitor = visitorFromJson(jsonString);

import 'dart:convert';

List<Visitor> visitorFromJson(String str) => List<Visitor>.from(json.decode(str).map((x) => Visitor.fromJson(x)));

String visitorToJson(List<Visitor> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Visitor {
  String name;
  String purpose;
  String address;
  String phoneNo;

  Visitor({
    required this.name,
    required this.purpose,
    required this.address,
    required this.phoneNo,
  });

  factory Visitor.fromJson(Map<String, dynamic> json) => Visitor(
    name: json["name"],
    purpose: json["purpose"],
    address: json["address"],
    phoneNo: json["phoneNo"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "purpose": purpose,
    "address": address,
    "phoneNo": phoneNo,
  };
}
