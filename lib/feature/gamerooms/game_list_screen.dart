import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/components/centered_progress.dart';
import 'package:game/core/constants/constants.dart';
import 'package:game/core/services/firebase_services.dart';
import 'package:game/feature/gamerooms/constants.dart';
import 'package:kartal/kartal.dart';

import 'components/room_card.dart';

class GameList extends StatelessWidget {

  FirebaseServices firebaseServices = FirebaseServices();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppbar(context),
        backgroundColor: primaryColor,
        body: buildBody(),
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blue
        ),
        title: Text(appBarTitle,style: context.textTheme.headline4?.copyWith(color: titleColor),),
        elevation: 0,
        backgroundColor: transparent,
        shadowColor: transparent,
      );
  }

  Column buildBody() {
    return Column(
        children: [
          SizedBox(height: 25.h),
          Container(
            child: StreamBuilder<QuerySnapshot>(
              stream: firebaseServices.games.snapshots(),
              builder: (context,AsyncSnapshot asyncSnapshot){
                if(asyncSnapshot.hasData){
                  return Flexible(
                    child: ListView.builder(
                      itemCount: asyncSnapshot.data.docs.length,
                      itemBuilder: (context,index){
                        return RoomCard(asyncSnapshot, index, context);
                      },
                    ),
                  );
                }
                else{
                  return CenteredProgress();
                }
              },
            ),
          ),
        ],
      );
  }

  
}