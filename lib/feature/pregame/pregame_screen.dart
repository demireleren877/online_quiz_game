import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:game/core/components/centered_progress.dart';
import 'package:game/core/services/firebase_services.dart';
import 'package:game/feature/pregame/viewmodel/pregame_viewmodel.dart';
import 'package:kartal/kartal.dart';
import 'components/player_tile.dart';

class PreGamePage extends StatefulWidget {
  final int? trSecond;
  final String? roomName;
  const PreGamePage({Key? key, this.trSecond, this.roomName}) : super(key: key);

  @override
  State<PreGamePage> createState() => _PreGamePageState();
}

class _PreGamePageState extends State<PreGamePage> {
  final FirebaseServices _firebaseServices = FirebaseServices();
  final PreGameVM _preGameVM = PreGameVM();

  @override
  void initState() {
    super.initState();
    _preGameVM.adminCheck(widget.roomName);
  }

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
          stream: _firebaseServices.games.doc(widget.roomName).snapshots(),
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
        Observer(builder: (_) {
          return ElevatedButton(
              onPressed: () {},
              child: Text(_preGameVM.isAdmin == true ? "start" : "ready"));
        })
      ],
    );
  }
}
