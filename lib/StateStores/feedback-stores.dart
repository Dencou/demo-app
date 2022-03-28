import 'package:demo_app/Models/FeedbackModel.dart';
import 'package:mobx/mobx.dart';

part 'feedback-stores.g.dart';

class FeedbackStores = FeedbackStoresBase with _$FeedbackStores;

abstract class FeedbackStoresBase with Store {

  @observable
  int rating =0;
  @observable
  List<FeedbackModel> feedbacks = [];

  @action
  void setFeedback(rating){
    this.rating = rating;

  }
  @action
  void setFeedbackList(feedbacks){
    this.feedbacks = feedbacks;
  }
}
var feedbackStore = FeedbackStores();