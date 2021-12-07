// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RoomVM on _RoomVMBase, Store {
  final _$passwordAtom = Atom(name: '_RoomVMBase.password');

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

  final _$_RoomVMBaseActionController = ActionController(name: '_RoomVMBase');

  @override
  dynamic onChanged(dynamic context, dynamic value, dynamic sd) {
    final _$actionInfo = _$_RoomVMBaseActionController.startAction(
        name: '_RoomVMBase.onChanged');
    try {
      return super.onChanged(context, value, sd);
    } finally {
      _$_RoomVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic navigate(dynamic context, dynamic sd) {
    final _$actionInfo =
        _$_RoomVMBaseActionController.startAction(name: '_RoomVMBase.navigate');
    try {
      return super.navigate(context, sd);
    } finally {
      _$_RoomVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
password: ${password}
    ''';
  }
}
