import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/constants/constants.dart';
import 'package:game/feature/gamerooms/viewmodel/rooms_viewmodel.dart';
import 'package:kartal/kartal.dart';
import 'password_bottom_sheet.dart';

// ignore: non_constant_identifier_names
Padding RoomCard(AsyncSnapshot<dynamic> asyncSnapshot, int index, BuildContext context) {

    RoomVM _roomVM = RoomVM();
    var sd = (asyncSnapshot.data.docs[index].data() as Map);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w,vertical: 8.0.h),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r)
        ),
        color: Colors.grey.shade300,
        child: ListTile(                                          
          title: Text("${sd["room"]}",style:context.textTheme.headline6?.copyWith(color: black)),
          leading: Icon(Icons.people,size: 30.sp,color: black),
          trailing: Container(
            width: 85.w,
            child: Row(
              children: [
                Icon(sd["password"] != null ? Icons.lock:Icons.lock_open,color: sd["password"] != null?red:green),
                SizedBox(width: 10.w),
                Text("8/${sd["players"]}",style: context.textTheme.headline6)
              ],
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal:10.w, vertical: 10.0.h),
          onTap: (){
            sd["password"] ==null ? _roomVM.navigate(context, sd): PassBottomSheet(context, _roomVM, sd); 
          },
        ),
      ),
    );
  }