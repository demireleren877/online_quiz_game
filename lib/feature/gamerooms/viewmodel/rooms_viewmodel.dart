import 'package:flutter/material.dart';
import 'package:game/feature/pregame/pregame_screen.dart';
import 'package:mobx/mobx.dart';
part 'rooms_viewmodel.g.dart';

class RoomVM = _RoomVMBase with _$RoomVM;

abstract class _RoomVMBase with Store {

  @observable
  String? password;

  @action
  onChanged(context,value,sd){
    if(value==sd["password"]){
      navigate(context, sd);
    }
  }

  @action
  navigate(context,sd){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>PreGamePage()));
  }
  
}