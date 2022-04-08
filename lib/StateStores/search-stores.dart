import 'package:demo_app/Models/FeedbackModel.dart';
import 'package:demo_app/Models/HotelCardModel.dart';
import 'package:demo_app/Models/SavedHotelModel.dart';
import 'package:mobx/mobx.dart';

part 'search-stores.g.dart';

class SearchStores = SearchStoresBase with _$SearchStores;

abstract class SearchStoresBase with Store {

  List<HotelCardModel> savedHotels = [];


  @action
  void setSavedHotels(List<HotelCardModel> hotel){
    this.savedHotels = hotel;


  }
}
var searchStores = SearchStores();