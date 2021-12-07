import 'dart:convert';

import 'package:game/core/constants/api_constants.dart';
import 'package:game/core/models/question_model.dart';
import 'package:http/http.dart' as http;
class ApiServices{

  Question ?jsonResponse;

  void getQuestions() async{
    var response = await http.get(Uri.parse(ApiConstants.baseUrl));
    if(response.statusCode ==200){
      jsonResponse = Question.fromJson(jsonDecode(response.body));
    }
  }
}