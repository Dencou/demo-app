class UserModel{
  String token;
  String name;
  String email;
  String password;
  String? country;
  String? image;

  UserModel({required this.name, required this.email, required this.password, this.country, this.image,required this.token});

}