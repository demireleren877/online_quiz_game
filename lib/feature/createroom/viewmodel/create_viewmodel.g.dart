// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CreateVM on _CreateVMBase, Store {
  final _$selectedTimeIndexAtom = Atom(name: '_CreateVMBase.selectedTimeIndex');

  @override
  int? get selectedTimeIndex {
    _$selectedTimeIndexAtom.reportRead();
    return super.selectedTimeIndex;
  }

  @override
  set selectedTimeIndex(int? value) {
    _$selectedTimeIndexAtom.reportWrite(value, super.selectedTimeIndex, () {
      super.selectedTimeIndex = value;
    });
  }

  final _$selectedQuestIndexAtom =
      Atom(name: '_CreateVMBase.selectedQuestIndex');

  @override
  int? get selectedQuestIndex {
    _$selectedQuestIndexAtom.reportRead();
    return super.selectedQuestIndex;
  }

  @override
  set selectedQuestIndex(int? value) {
    _$selectedQuestIndexAtom.reportWrite(value, super.selectedQuestIndex, () {
      super.selectedQuestIndex = value;
    });
  }

  final _$selectedPlayerIndexAtom =
      Atom(name: '_CreateVMBase.selectedPlayerIndex');

  @override
  int? get selectedPlayerIndex {
    _$selectedPlayerIndexAtom.reportRead();
    return super.selectedPlayerIndex;
  }

  @override
  set selectedPlayerIndex(int? value) {
    _$selectedPlayerIndexAtom.reportWrite(value, super.selectedPlayerIndex, () {
      super.selectedPlayerIndex = value;
    });
  }

  final _$isLockedAtom = Atom(name: '_CreateVMBase.isLocked');

  @override
  bool get isLocked {
    _$isLockedAtom.reportRead();
    return super.isLocked;
  }

  @override
  set isLocked(bool value) {
    _$isLockedAtom.reportWrite(value, super.isLocked, () {
      super.isLocked = value;
    });
  }

  final _$passwordAtom = Atom(name: '_CreateVMBase.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$roomNameAtom = Atom(name: '_CreateVMBase.roomName');

  @override
  String? get roomName {
    _$roomNameAtom.reportRead();
    return super.roomName;
  }

  @override
  set roomName(String? value) {
    _$roomNameAtom.reportWrite(value, super.roomName, () {
      super.roomName = value;
    });
  }

  final _$_CreateVMBaseActionController =
      ActionController(name: '_CreateVMBase');

  @override
  dynamic lock() {
    final _$actionInfo =
        _$_CreateVMBaseActionController.startAction(name: '_CreateVMBase.lock');
    try {
      return super.lock();
    } finally {
      _$_CreateVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangedPass(dynamic value) {
    final _$actionInfo = _$_CreateVMBaseActionController.startAction(
        name: '_CreateVMBase.onChangedPass');
    try {
      return super.onChangedPass(value);
    } finally {
      _$_CreateVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onChangedRoomName(dynamic value) {
    final _$actionInfo = _$_CreateVMBaseActionController.startAction(
        name: '_CreateVMBase.onChangedRoomName');
    try {
      return super.onChangedRoomName(value);
    } finally {
      _$_CreateVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic createGame(dynamic context) {
    final _$actionInfo = _$_CreateVMBaseActionController.startAction(
        name: '_CreateVMBase.createGame');
    try {
      return super.createGame(context);
    } finally {
      _$_CreateVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTimeIndex: ${selectedTimeIndex},
selectedQuestIndex: ${selectedQuestIndex},
selectedPlayerIndex: ${selectedPlayerIndex},
isLocked: ${isLocked},
password: ${password},
roomName: ${roomName}
    ''';
  }
}
