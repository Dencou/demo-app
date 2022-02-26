import 'package:mobx/mobx.dart';

part 'feedback-stores.g.dart';

class FeedbackStores = FeedbackStoresBase with _$FeedbackStores;

abstract class FeedbackStoresBase with Store {




  @action
  void setFeedback(){
  }
}