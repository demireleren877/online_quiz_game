// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pregame_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PreGameVM on _PreGameVMBase, Store {
  final _$isAdminAtom = Atom(name: '_PreGameVMBase.isAdmin');

  @override
  bool? get isAdmin {
    _$isAdminAtom.reportRead();
    return super.isAdmin;
  }

  @override
  set isAdmin(bool? value) {
    _$isAdminAtom.reportWrite(value, super.isAdmin, () {
      super.isAdmin = value;
    });
  }

  final _$adminNameAtom = Atom(name: '_PreGameVMBase.adminName');

  @override
  String? get adminName {
    _$adminNameAtom.reportRead();
    return super.adminName;
  }

  @override
  set adminName(String? value) {
    _$adminNameAtom.reportWrite(value, super.adminName, () {
      super.adminName = value;
    });
  }

  final _$_PreGameVMBaseActionController =
      ActionController(name: '_PreGameVMBase');

  @override
  void adminCheck(dynamic room) {
    final _$actionInfo = _$_PreGameVMBaseActionController.startAction(
        name: '_PreGameVMBase.adminCheck');
    try {
      return super.adminCheck(room);
    } finally {
      _$_PreGameVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isAdmin: ${isAdmin},
adminName: ${adminName}
    ''';
  }
}
