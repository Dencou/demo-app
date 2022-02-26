import 'package:mobx/mobx.dart';

part 'user-stores.g.dart';

class UserStore = UserStoreBase with _$UserStore;

abstract class UserStoreBase with Store {


  @observable
  String name = '';
  @observable
  String token = '';
  @observable
  String email = '';


  @action
  void setUserData(name, token,email){
    this.name = name;
    this.token = token;
    this.email = email;

  }

  @action
  void setToken(token){
    this.token = token;
  }
}
var userStores = UserStore();