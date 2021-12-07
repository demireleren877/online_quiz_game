import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kartal/kartal.dart';
import 'package:game/core/constants/constants.dart';

ListTile PlayerTile(BuildContext context, AsyncSnapshot<dynamic> asyncSnapshot, int index) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r)
      ),
      horizontalTitleGap: 50.w,
      contentPadding: context.paddingLow,
      leading: Icon(Icons.person,color: white,size: 35.sp),
      tileColor: purpleShade300,                              
      title: Text(asyncSnapshot.data["activePlayers"][index].toString(),style: context.textTheme.headline6?.copyWith(color: white),),
    );
  }