import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/components/centered_progress.dart';
import 'package:game/core/constants/color_constants.dart';
import 'package:game/feature/gameplay/viewmodel/game_viewmodel.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter/material.dart';

class AnswerBox extends StatelessWidget {
  const AnswerBox({
    Key? key,
    required GameVM gameVM,
    required int order,
  })  : _order = order,
        _gameVM = gameVM,
        super(key: key);

  final GameVM _gameVM;
  final int _order;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.08),
      width: context.dynamicWidth(0.9),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        color: AppColors.white,
        shadowColor: AppColors.grey,
        child: Observer(
            builder: (context) => _gameVM.jsonResponse != null
                ? Center(
                    child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: Text(
                        _gameVM.answers[_order]
                            .replaceAll("&quot;", "")
                            .replaceAll("&#039;", "'")
                            .replaceAll("&uuml;", "ü"),
                        style: context.textTheme.headline6?.copyWith(
                            fontSize: 23.sp, color: AppColors.black)),
                  ))
                : const CenteredProgress()),
      ),
    );
  }
}
