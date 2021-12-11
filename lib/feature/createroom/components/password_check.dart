import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/constants/color_constants.dart';
import 'package:game/feature/createroom/viewmodel/create_viewmodel.dart';
import 'package:kartal/kartal.dart';

import '../constants.dart';

class PassCheck extends StatelessWidget {
  const PassCheck({
    Key? key,
    required CreateVM createVM,
  })  : _createVM = createVM,
        super(key: key);

  final CreateVM _createVM;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            CreateRoomConstants.title4,
            style: context.textTheme.headline6?.copyWith(fontSize: 23.sp),
          ),
          Observer(builder: (_) {
            return IconButton(
              onPressed: _createVM.lock,
              icon: Icon(_createVM.isLocked ? Icons.done : Icons.cancel),
              color: _createVM.isLocked ? AppColors.green : AppColors.red,
              iconSize: 30.sp,
            );
          }),
        ],
      ),
    );
  }
}
