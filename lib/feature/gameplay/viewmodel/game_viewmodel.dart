import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:game/core/constants/api_constants.dart';
import 'package:game/core/models/question_model.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
part 'game_viewmodel.g.dart';

class GameVM = _GameVMBase with _$GameVM;

abstract class _GameVMBase with Store {
  @observable
  Question? jsonResponse;

  @observable
  var answers = [];

  @observable
  int i = 0;

  @observable
  double initial = 1.0;

  @observable
  // ignore: prefer_typing_uninitialized_variables
  var renk;

  @action
  Future getQuestions() async {
    var response = await http.get(Uri.parse(ApiConstants.baseUrl));
    if (response.statusCode == 200) {
      jsonResponse = Question.fromJson(jsonDecode(response.body));
      fonksiyon();
    }
  }

  @action
  fonksiyon() {
    answers.clear();
    answers = jsonResponse!.results[i].incorrectAnswers;
    answers.add(jsonResponse!.results[i].correctAnswer);
    answers.shuffle();
    answers.add(jsonResponse!.results[i].question);
  }

  @action
  timer(int? second) {
    Timer.periodic(const Duration(milliseconds: 10), (timer) {
      initial -= 1 / (second! * 100);
      initial > 0.66
          ? renk = Colors.green
          : (initial < 0.66 && initial > 0.33
              ? renk = Colors.yellow
              : renk = Colors.red);
      if (initial < 0.001) {
        if (i < 9) {
          i++;
          fonksiyon();
        } else {
          timer.cancel();
        }
        initial = 1.0;
      }
    });
  }
}
