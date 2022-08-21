import 'dart:developer';

import 'package:http/http.dart 'as http;
import 'package:wit/Model/usermedicine.dart';
class RemoteServices{

  static var client = http.Client();
  static  Future<List<Problem>?>fetchProblems()async{
    final urls = Uri.parse('https://run.mocky.io/v3/9dff04c0-ddc6-4c95-b3b7-1095fdca46e5');
   var response = await http.get(urls);
   final datas = searchModelFromJson(response.body);
   log(response.body .toString());
   return datas.problems;
   
  

  



  }

  }
