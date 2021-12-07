import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/feature/createroom/viewmodel/create_viewmodel.dart';
import 'package:kartal/kartal.dart';

class RoomNameField extends StatelessWidget {
  const RoomNameField({
    Key? key,
    required CreateVM createVM,
  }) : _createVM = createVM, super(key: key);

  final CreateVM _createVM;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.paddingLow,
      width: 400.w,
      child: TextField(
        onChanged: (value)=> _createVM.onChangedRoomName(value),
        style: TextStyle(fontSize: 20.sp),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r)
          ),
        ),
      ),
    );
  }
}