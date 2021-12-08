import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/feature/gameplay/constants.dart';
import 'components/answer_box.dart';
import 'components/question_box.dart';
import 'components/timer_widget.dart';
import 'viewmodel/game_viewmodel.dart';

class GameScreen extends StatefulWidget {
  final int? second;

  const GameScreen({Key? key, this.second}) : super(key: key);
  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final GameVM _gameVM = GameVM();
  @override
  void initState() {
    super.initState();
    _gameVM.getQuestions().then((value) => _gameVM.timer(widget.second));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(GamePlayConstants.bgPath),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 30.h),
              TimerWidget(gameVM: _gameVM),
              SizedBox(height: 20.h),
              QuestionBox(gameVM: _gameVM),
              SizedBox(height: 30.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnswerBox(gameVM: _gameVM, order: 0),
                  SizedBox(height: 10.h),
                  AnswerBox(gameVM: _gameVM, order: 1),
                  SizedBox(height: 10.h),
                  AnswerBox(gameVM: _gameVM, order: 2),
                  SizedBox(height: 10.h),
                  AnswerBox(gameVM: _gameVM, order: 3),
                  SizedBox(height: 100.h)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
