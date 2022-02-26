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
  @observable
  int id = 0;
  @observable
  String image='something';


  @action
  void setUserData(name,email,id){
    this.name = name;
    this.email = email;
    this.id = id;

  }

  @action
  void setToken(token){
    this.token = token;
  }
}
var userStores = UserStore();