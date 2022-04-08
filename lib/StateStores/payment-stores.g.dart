// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment-stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PaymentStores on PaymentStoresBase, Store {
  final _$totalAtom = Atom(name: 'PaymentStoresBase.total');

  @override
  String get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(String value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  final _$dateAtom = Atom(name: 'PaymentStoresBase.date');

  @override
  String get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(String value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  final _$PaymentStoresBaseActionController =
      ActionController(name: 'PaymentStoresBase');

  @override
  void setFeedback(dynamic total, dynamic date) {
    final _$actionInfo = _$PaymentStoresBaseActionController.startAction(
        name: 'PaymentStoresBase.setFeedback');
    try {
      return super.setFeedback(total, date);
    } finally {
      _$PaymentStoresBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
total: ${total},
date: ${date}
    ''';
  }
}
