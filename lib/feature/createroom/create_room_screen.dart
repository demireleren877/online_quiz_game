import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/feature/createroom/constants.dart';
import 'package:game/feature/createroom/viewmodel/create_viewmodel.dart';
import 'package:kartal/kartal.dart';
import 'package:game/core/constants/color_constants.dart';
import 'components/password_check.dart';
import 'components/password_field.dart';
import 'components/room_field.dart';
import 'components/selectable_button.dart';
class CreateRoom extends StatelessWidget {
  final CreateVM _createVM = CreateVM();

  CreateRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: buildBody(context),
      ),
    );
  }

  SingleChildScrollView buildBody(BuildContext context) {
    return SingleChildScrollView(
        physics:  const BouncingScrollPhysics(),
        child: SizedBox(
          height: context.dynamicHeight(1),
          child: Column(
            children: [
              Text(CreateRoomConstants.title0,style: context.textTheme.headline6),
              RoomNameField(createVM: _createVM),
              Text(CreateRoomConstants.title1,style: context.textTheme.headline6),  
              Container(
                height: 100.h,
                padding: context.paddingNormal,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return Observer(builder:(c)=> SelectableButton( factor: 5, collecter: 4,selectKind: _createVM.selectedTimeIndex, onTap: (){_createVM.selectedTimeIndex=index;}, index: index));
                  },
                ),
              ),
              SizedBox(height: 25.h),
              Text(CreateRoomConstants.title2,style: context.textTheme.headline6),
              Container(
                height: 100.h,
                padding: context.paddingNormal,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return Observer(builder:(c)=> SelectableButton( factor: 5, collecter: 1,selectKind: _createVM.selectedQuestIndex, onTap: (){_createVM.selectedQuestIndex=index;}, index: index));
                  },
                ),
              ),
              SizedBox(height: 25.h),
              Text(CreateRoomConstants.title3,style: context.textTheme.headline6),
              Container(
                height: 100.h,
                padding: context.paddingNormal,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context,index){
                    return Observer(builder:(c)=> SelectableButton( factor: 2, collecter: 1,selectKind: _createVM.selectedPlayerIndex, onTap: (){_createVM.selectedPlayerIndex=index;}, index: index));
                  },
                ),
              ),
              SizedBox(height: 25.h),
              PassCheck(createVM: _createVM),
              PassField(createVM: _createVM),                
              SizedBox(height: 20.h),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r)
                ),
                height: 50.h,
                color: AppColors.green,
                onPressed: (){
                  _createVM.createGame(context);
                }, 
                child: Text(CreateRoomConstants.createBtnText,style: context.textTheme.headline6?.copyWith(color: AppColors.white)),
              ),
            ],
          ),
        ),
      );
  }
}

