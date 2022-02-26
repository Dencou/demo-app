import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:mobx/mobx.dart';

part 'hotel-details.g.dart';

class HotelDetails = HotelDetailsBase with _$HotelDetails;

abstract class HotelDetailsBase with Store {

  @observable
  List<HotelCardModel> hotels = [];
  @observable
  String name='';
  @observable
  String price='';
  @observable
  String extra='';
  @observable
  String city='';
  @observable
  String country='';
  @observable
  String bannerImage='';


  @observable
  int currHotel = 0;




  @action
  void setDetails(List<HotelCardModel> hotels){
    this.hotels = hotels;
  }

  @action
  void setDetailss(List<HotelCardModel> hotel){
    this.hotels = hotel;

  }

  @action
  void setCurrHotel(id){
    currHotel = id;
  }

}

var hotelStores = HotelDetails();