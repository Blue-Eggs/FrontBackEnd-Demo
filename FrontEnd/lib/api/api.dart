import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/Demo.dart';
import 'package:http/http.dart' as http;

class DemoProvider with ChangeNotifier{
  DemoProvider(){
    fetchTasks();
  }

  List<Demo_Lists> _mylist = [];

  List<Demo_Lists> get mylist{
    return [..._mylist];
  }
  fetchTasks() async{

    

    const url = 'http://127.0.0.1:8000/views/';
    final response = await http.get(Uri.parse(url));
      
  
      
    if(response.statusCode==200){
      var data = json.decode(response.body);

      _mylist = data.map<Demo_Lists>((json)=> Demo_Lists.fromJson(json)).toList();
              
    }

  }
}