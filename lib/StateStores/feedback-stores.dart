import 'package:mobx/mobx.dart';

part 'feedback-stores.g.dart';

class FeedbackStores = FeedbackStoresBase with _$FeedbackStores;

abstract class FeedbackStoresBase with Store {

  @observable
  int rating =0;




  @action
  void setFeedback(rating){

    this.rating = rating;

  }
}
var feedbackStore = FeedbackStores();