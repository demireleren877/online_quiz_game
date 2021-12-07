import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/constants/hive_constants.dart';
import 'package:game/feature/createroom/create_room_screen.dart';
import 'package:game/feature/gamerooms/game_list_screen.dart';
import 'package:game/feature/home/constants.dart';
import 'package:hive/hive.dart';
import 'components/custom_button.dart';
import 'components/username_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(flex:1,child: Image.asset(HomeConstants.logoPath)),
              CustomButton(btnText: HomeConstants.btn1Text,onPress: (){
                Hive.box(HiveConstants.boxName).isNotEmpty ? Navigator.push(context, MaterialPageRoute(builder: (_)=>CreateRoom())):
                UsernameDialog(context);
              },
              ),
              SizedBox(height: 25.h),
              CustomButton(btnText:HomeConstants.btn2Text,onPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>GameList()));
              },),
              SizedBox(height: 25.h),
              CustomButton(btnText:HomeConstants.btn3Text,onPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CreateRoom()));
              },),
              SizedBox(height:50.h)
            ],
          ),
        )
      ),
    );
  }
}
  