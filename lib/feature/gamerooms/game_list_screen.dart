import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/components/centered_progress.dart';
import 'package:game/core/constants/color_constants.dart';
import 'package:game/core/services/firebase_services.dart';
import 'package:game/feature/gamerooms/constants.dart';
import 'package:kartal/kartal.dart';
import 'components/room_card.dart';

class GameList extends StatelessWidget {
  final FirebaseServices _firebaseServices = FirebaseServices();

  GameList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppbar(context),
        body: buildBody(),
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back),
        iconSize: 25.sp,
      ),
      title: Text(
        GameRoomsConstants.appBarTitle,
        style: context.textTheme.headline4
            ?.copyWith(fontSize: 33.sp, color: AppColors.blue),
      ),
    );
  }

  Column buildBody() {
    return Column(
      children: [
        SizedBox(height: 25.h),
        StreamBuilder<QuerySnapshot>(
          stream: _firebaseServices.games.snapshots(),
          builder: (context, AsyncSnapshot asyncSnapshot) {
            if (asyncSnapshot.hasData) {
              return Flexible(
                child: ListView.builder(
                  itemCount: asyncSnapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    return RoomCard(asyncSnapshot, index, context);
                  },
                ),
              );
            } else {
              return const CenteredProgress();
            }
          },
        ),
      ],
    );
  }
}
