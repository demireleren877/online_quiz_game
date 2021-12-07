// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeVM on _HomeVMBase, Store {
  final _$userNameAtom = Atom(name: '_HomeVMBase.userName');

  @override
  String? get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String? value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  final _$_HomeVMBaseActionController = ActionController(name: '_HomeVMBase');

  @override
  dynamic onChanged(dynamic value) {
    final _$actionInfo = _$_HomeVMBaseActionController.startAction(
        name: '_HomeVMBase.onChanged');
    try {
      return super.onChanged(value);
    } finally {
      _$_HomeVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addUserName() {
    final _$actionInfo = _$_HomeVMBaseActionController.startAction(
        name: '_HomeVMBase.addUserName');
    try {
      return super.addUserName();
    } finally {
      _$_HomeVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userName: ${userName}
    ''';
  }
}
