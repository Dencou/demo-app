// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback-stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedbackStores on FeedbackStoresBase, Store {
  final _$ratingAtom = Atom(name: 'FeedbackStoresBase.rating');

  @override
  int get rating {
    _$ratingAtom.reportRead();
    return super.rating;
  }

  @override
  set rating(int value) {
    _$ratingAtom.reportWrite(value, super.rating, () {
      super.rating = value;
    });
  }

  final _$feedbacksAtom = Atom(name: 'FeedbackStoresBase.feedbacks');

  @override
  List<FeedbackModel> get feedbacks {
    _$feedbacksAtom.reportRead();
    return super.feedbacks;
  }

  @override
  set feedbacks(List<FeedbackModel> value) {
    _$feedbacksAtom.reportWrite(value, super.feedbacks, () {
      super.feedbacks = value;
    });
  }

  final _$FeedbackStoresBaseActionController =
      ActionController(name: 'FeedbackStoresBase');

  @override
  void setFeedback(dynamic rating) {
    final _$actionInfo = _$FeedbackStoresBaseActionController.startAction(
        name: 'FeedbackStoresBase.setFeedback');
    try {
      return super.setFeedback(rating);
    } finally {
      _$FeedbackStoresBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFeedbackList(dynamic feedbacks) {
    final _$actionInfo = _$FeedbackStoresBaseActionController.startAction(
        name: 'FeedbackStoresBase.setFeedbackList');
    try {
      return super.setFeedbackList(feedbacks);
    } finally {
      _$FeedbackStoresBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
rating: ${rating},
feedbacks: ${feedbacks}
    ''';
  }
}
