import 'package:demo_app/Models/FeedbackModel.dart';
import 'package:demo_app/Models/SavedHotelModel.dart';
import 'package:mobx/mobx.dart';

part 'saved-hotels-stores.g.dart';

class SavedHotelsStores = SavedHotelsStoresBase with _$SavedHotelsStores;

abstract class SavedHotelsStoresBase with Store {

  List<SavedHotelModel> savedHotels = [];


  @action
  void setSavedHotels(List<SavedHotelModel> hotel){
    this.savedHotels = hotel;


  }
}
var savedHotelsStores = SavedHotelsStores();