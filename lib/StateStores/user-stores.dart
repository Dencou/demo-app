import 'package:mobx/mobx.dart';

part 'user-stores.g.dart';

class UserStore = UserStoreBase with _$UserStore;

abstract class UserStoreBase with Store {


  @observable
  String bannerImage = '';

  @observable
  String name = '';
  @observable
  String location = '';
  @observable
  String price = '';
  @observable
  int rating = 0;
  @observable
  String extras = '';


  @action
  void setDetails({name,location,price,rating,extras}){
    this.name = name;
    this.location = location;
    this.price = price;
    this.rating = rating;
    this.extras = extras;

  }
}