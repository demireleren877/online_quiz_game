// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameVM on _GameVMBase, Store {
  final _$jsonResponseAtom = Atom(name: '_GameVMBase.jsonResponse');

  @override
  Question? get jsonResponse {
    _$jsonResponseAtom.reportRead();
    return super.jsonResponse;
  }

  @override
  set jsonResponse(Question? value) {
    _$jsonResponseAtom.reportWrite(value, super.jsonResponse, () {
      super.jsonResponse = value;
    });
  }

  final _$answersAtom = Atom(name: '_GameVMBase.answers');

  @override
  List<dynamic> get answers {
    _$answersAtom.reportRead();
    return super.answers;
  }

  @override
  set answers(List<dynamic> value) {
    _$answersAtom.reportWrite(value, super.answers, () {
      super.answers = value;
    });
  }

  final _$iAtom = Atom(name: '_GameVMBase.i');

  @override
  int get i {
    _$iAtom.reportRead();
    return super.i;
  }

  @override
  set i(int value) {
    _$iAtom.reportWrite(value, super.i, () {
      super.i = value;
    });
  }

  final _$initialAtom = Atom(name: '_GameVMBase.initial');

  @override
  double get initial {
    _$initialAtom.reportRead();
    return super.initial;
  }

  @override
  set initial(double value) {
    _$initialAtom.reportWrite(value, super.initial, () {
      super.initial = value;
    });
  }

  final _$renkAtom = Atom(name: '_GameVMBase.renk');

  @override
  dynamic get renk {
    _$renkAtom.reportRead();
    return super.renk;
  }

  @override
  set renk(dynamic value) {
    _$renkAtom.reportWrite(value, super.renk, () {
      super.renk = value;
    });
  }

  final _$getQuestionsAsyncAction = AsyncAction('_GameVMBase.getQuestions');

  @override
  Future<dynamic> getQuestions() {
    return _$getQuestionsAsyncAction.run(() => super.getQuestions());
  }

  final _$_GameVMBaseActionController = ActionController(name: '_GameVMBase');

  @override
  dynamic fonksiyon() {
    final _$actionInfo = _$_GameVMBaseActionController.startAction(
        name: '_GameVMBase.fonksiyon');
    try {
      return super.fonksiyon();
    } finally {
      _$_GameVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic timer(int? second) {
    final _$actionInfo =
        _$_GameVMBaseActionController.startAction(name: '_GameVMBase.timer');
    try {
      return super.timer(second);
    } finally {
      _$_GameVMBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
jsonResponse: ${jsonResponse},
answers: ${answers},
i: ${i},
initial: ${initial},
renk: ${renk}
    ''';
  }
}
