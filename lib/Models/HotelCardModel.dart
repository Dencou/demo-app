class HotelCardModel{
  String bannerImage;
  String name;
  String location;
  String price;
  int rating = 0;
  String extras;
  String? contactNumer;
  String? socialOne;



  HotelCardModel({required this.name,required this.bannerImage,required this.location,required this.price,required this.extras, required this.rating, this.socialOne, this.contactNumer});
}