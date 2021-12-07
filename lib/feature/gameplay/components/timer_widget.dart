import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/constants/constants.dart';
import 'package:game/feature/gameplay/viewmodel/game_viewmodel.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({
    Key? key,
    required GameVM gameVM,
  }) : _gameVM = gameVM, super(key: key);

  final GameVM _gameVM;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: context.dynamicWidth(0.9),
          child: Observer(builder: (_) {
            return LinearProgressIndicator(
              backgroundColor: white,
              color: _gameVM.renk,
              minHeight: 8.h,
              value: _gameVM.initial,
            );
          }),
        ),
        SizedBox(width: 25.w)
      ],
    );
  }
}