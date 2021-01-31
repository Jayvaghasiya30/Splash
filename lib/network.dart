import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:ui';

class User{
  final String name;

  User(this.name);
}

class Getuser{
  Future <List<User>>getusers() async{
    var url = 'http://playonnuat-env.eba-ernpdw3w.ap-south-1.elasticbeanstalk.com/api/v1/establishment/test/list?offset=0&limit=10';
    var response = await http.get(url);
    var data = json.decode(response.body);

    List<User> users = [];
    for(var u in data){
      User user = User(u["name"]);

      users.add(user);

    }

    return users;

  }
}