import 'package:game/core/constants/hive_constants.dart';
import 'package:game/core/services/firebase_services.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
part 'pregame_viewmodel.g.dart';

class PreGameVM = _PreGameVMBase with _$PreGameVM;

abstract class _PreGameVMBase with Store {
  final FirebaseServices _firebaseServices = FirebaseServices();

  @observable
  bool? isAdmin;

  @observable
  String? adminName;

  @action
  void adminCheck(room) {
    _firebaseServices.games.doc(room).get().then((value) {
      if (Hive.box(HiveConstants.boxName).getAt(0) ==
          (value.data() as Map)["admin"]) {
        isAdmin = true;
      }
    });
  }
}
