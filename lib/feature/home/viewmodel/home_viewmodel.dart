import 'package:game/core/constants/hive_constants.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
part 'home_viewmodel.g.dart';

class HomeVM = _HomeVMBase with _$HomeVM;

abstract class _HomeVMBase with Store {

  @observable
  String? userName;

  @action
  onChanged(value){
    userName = value;
  }


  @action
  addUserName(){
    var box = Hive.box(HiveConstants.boxName);
    userName !=null? box.add(userName):null;
  }
  
}