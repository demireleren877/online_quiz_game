import 'package:flutter/material.dart';
import 'package:game/core/constants/hive_constants.dart';
import 'package:game/core/services/firebase_services.dart';
import 'package:game/feature/pregame/pregame_screen.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
part 'create_viewmodel.g.dart';

class CreateVM = _CreateVMBase with _$CreateVM;

abstract class _CreateVMBase with Store {
  final FirebaseServices _firebaseServices = FirebaseServices();

  @observable
  int? selectedTimeIndex;

  @observable
  int? selectedQuestIndex;

  @observable
  int? selectedPlayerIndex;

  @observable
  bool isLocked = false;

  @observable
  String? password;

  @observable
  String? roomName;

  @action
  lock() {
    isLocked = !isLocked;
  }

  @action
  onChangedPass(value) {
    password = value;
  }

  @action
  onChangedRoomName(value) {
    roomName = value;
  }

  @action
  createGame(context) {
    _firebaseServices.games.doc(roomName).set({
      "time": (selectedTimeIndex! + 4) * 5,
      "players": (selectedPlayerIndex! + 1) * 2,
      "question": (selectedQuestIndex! + 1) * 5,
      "room": roomName,
      "password": password,
      "isActive": false,
      "admin": Hive.box(HiveConstants.boxName).getAt(0),
      "activePlayers": [Hive.box(HiveConstants.boxName).getAt(0)],
    });
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => PreGamePage(
                  roomName: roomName,
                  trSecond: (selectedTimeIndex! + 4) * 5,
                )));
  }
}
