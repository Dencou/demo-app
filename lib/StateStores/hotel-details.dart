import 'package:mobx/mobx.dart';

part 'hotel-details.g.dart';

class HotelDetails = HotelDetailsBase with _$HotelDetails;

abstract class HotelDetailsBase with Store {


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