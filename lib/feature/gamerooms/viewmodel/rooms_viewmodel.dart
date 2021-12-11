import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:game/core/constants/hive_constants.dart';
import 'package:game/core/services/firebase_services.dart';
import 'package:game/feature/pregame/pregame_screen.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
part 'rooms_viewmodel.g.dart';

class RoomVM = _RoomVMBase with _$RoomVM;

abstract class _RoomVMBase with Store {
  final FirebaseServices _firebaseServices = FirebaseServices();

  @observable
  String? password;

  @action
  onChanged(context, value, sd) {
    if (value == sd["password"]) {
      navigate(context, sd);
    }
  }

  @action
  navigate(context, sd) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => PreGamePage(
                  roomName: sd["room"],
                  trSecond: sd["time"],
                )));
    _firebaseServices.games.doc(sd["room"]).update({
      "activePlayers":
          FieldValue.arrayUnion([Hive.box(HiveConstants.boxName).getAt(0)])
    });
  }
}
