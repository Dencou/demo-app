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
  String bannerImage = '';
  @observable
  int currHotel = 0;




  @action
  void setDetails(List<HotelCardModel> hotels){
    this.hotels = hotels;
  }

  @action
  void setDetailss({required name, required price, required bannerImage}){
    this.name = name;
    this.price = price;
    this.bannerImage = bannerImage;

  }

  @action
  void setCurrHotel(id){
    currHotel = id;
  }

}

var hotelStores = HotelDetails();