import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<PhoneModel> fetchButton() async {
  final response = await http
      .get(Uri.parse('https://wedothakre.com/api/setting/showAll'));

  if (response.statusCode == 200) {
    print(response.body);
    return PhoneModel.fromJson(jsonDecode(response.body));
    
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class PhoneModel {
  String? phone;

  PhoneModel({this.phone});

  factory PhoneModel.fromJson(Map<String, dynamic> json) {
    return PhoneModel(
    phone : json['phone'],
  );
  }

}