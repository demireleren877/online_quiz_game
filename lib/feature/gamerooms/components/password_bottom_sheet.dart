import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/feature/gamerooms/constants.dart';
import 'package:game/feature/gamerooms/viewmodel/rooms_viewmodel.dart';
import 'package:kartal/kartal.dart';

Future<dynamic> passBottomSheet(
    BuildContext context, RoomVM _roomVM, Map<dynamic, dynamic> sd) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15.r))),
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return BottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(15.r))),
            constraints: BoxConstraints(
              minHeight: 200.h,
            ),
            onClosing: () {},
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Container(),
                    SizedBox(height: 25.h),
                    Text(
                      GameRoomsConstants.enterPass,
                      style: context.textTheme.headline6
                          ?.copyWith(fontSize: 23.sp),
                    ),
                    SizedBox(height: 40.h),
                    SizedBox(
                      width: 350.w,
                      child: TextField(
                        onChanged: (value) =>
                            _roomVM.onChanged(context, value, sd),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.r)),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      });
}
