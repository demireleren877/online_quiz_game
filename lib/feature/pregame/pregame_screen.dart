import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/components/centered_progress.dart';
import 'package:game/core/services/firebase_services.dart';
import 'package:kartal/kartal.dart';

import 'components/player_tile.dart';

class PreGamePage extends StatelessWidget {
  final int? trSecond;
  final String? roomName;
  PreGamePage({Key? key, this.trSecond, this.roomName}) : super(key: key);

  final FirebaseServices _firebaseServices = FirebaseServices();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: buildBody()),
    );
  }

  Column buildBody() {
    return Column(
      children: [
        SizedBox(height: 25.h),
        StreamBuilder<DocumentSnapshot>(
          stream: _firebaseServices.games.doc(roomName).snapshots(),
          builder: (context, AsyncSnapshot asyncSnapshot) {
            if (asyncSnapshot.hasData) {
              return Flexible(
                child: ListView.builder(
                  itemCount: asyncSnapshot.data["activePlayers"].length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: context.paddingNormal,
                      child: playerTile(context, asyncSnapshot, index),
                    );
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
