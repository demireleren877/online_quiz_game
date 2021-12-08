import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/constants/color_constants.dart';
import 'package:game/feature/home/viewmodel/home_viewmodel.dart';
import 'package:kartal/kartal.dart';

final HomeVM _homeVM = HomeVM();

// ignore: non_constant_identifier_names
Future<dynamic> UsernameDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (a) {
        return Dialog(
          child: Container(
            padding: context.paddingNormal,
            height: 240.h,
            width: 300.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Enter Your Username",
                  style: context.textTheme.headline6,
                ),
                SizedBox(height: 20.h),
                TextField(
                  onChanged: (value) => _homeVM.onChanged(value),
                  style: context.textTheme.headline6,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r))),
                ),
                SizedBox(height: 25.h),
                SizedBox(
                    height: 50.h,
                    width: 120.w,
                    child: ElevatedButton(
                        onPressed: _homeVM.addUserName,
                        child: Text(
                          "Confirm",
                          style: context.textTheme.headline6
                              ?.copyWith(color: AppColors.white),
                        )))
              ],
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        );
      });
}
