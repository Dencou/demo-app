import 'package:demo_app/Models/FeedbackModel.dart';
import 'package:mobx/mobx.dart';

part 'payment-stores.g.dart';

class PaymentStores = PaymentStoresBase with _$PaymentStores;

abstract class PaymentStoresBase with Store {

  @observable
  String total = '';
  @observable
  String date = '';

  @action
  void setFeedback(total, date){
    this.total = total;
    this.date = date;

  }

}
var paymentStores = PaymentStores();