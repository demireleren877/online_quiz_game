import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/feature/createroom/viewmodel/create_viewmodel.dart';

class PassField extends StatelessWidget {
  const PassField({
    Key? key,
    required CreateVM createVM,
  })  : _createVM = createVM,
        super(key: key);

  final CreateVM _createVM;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (x) => Visibility(
        visible: _createVM.isLocked,
        child: SizedBox(
          width: 300.w,
          child: TextField(
            style: TextStyle(fontSize: 20.sp),
            onChanged: (value) => _createVM.onChangedPass(value),
          ),
        ),
      ),
    );
  }
}
