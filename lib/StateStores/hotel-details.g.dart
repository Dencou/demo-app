// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel-details.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HotelDetails on HotelDetailsBase, Store {
  final _$hotelsAtom = Atom(name: 'HotelDetailsBase.hotels');

  @override
  List<HotelCardModel> get hotels {
    _$hotelsAtom.reportRead();
    return super.hotels;
  }

  @override
  set hotels(List<HotelCardModel> value) {
    _$hotelsAtom.reportWrite(value, super.hotels, () {
      super.hotels = value;
    });
  }

  final _$nameAtom = Atom(name: 'HotelDetailsBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$priceAtom = Atom(name: 'HotelDetailsBase.price');

  @override
  String get price {
    _$priceAtom.reportRead();
    return super.price;
  }

  @override
  set price(String value) {
    _$priceAtom.reportWrite(value, super.price, () {
      super.price = value;
    });
  }

  final _$bannerImageAtom = Atom(name: 'HotelDetailsBase.bannerImage');

  @override
  String get bannerImage {
    _$bannerImageAtom.reportRead();
    return super.bannerImage;
  }

  @override
  set bannerImage(String value) {
    _$bannerImageAtom.reportWrite(value, super.bannerImage, () {
      super.bannerImage = value;
    });
  }

  final _$currHotelAtom = Atom(name: 'HotelDetailsBase.currHotel');

  @override
  int get currHotel {
    _$currHotelAtom.reportRead();
    return super.currHotel;
  }

  @override
  set currHotel(int value) {
    _$currHotelAtom.reportWrite(value, super.currHotel, () {
      super.currHotel = value;
    });
  }

  final _$HotelDetailsBaseActionController =
      ActionController(name: 'HotelDetailsBase');

  @override
  void setDetails(List<HotelCardModel> hotels) {
    final _$actionInfo = _$HotelDetailsBaseActionController.startAction(
        name: 'HotelDetailsBase.setDetails');
    try {
      return super.setDetails(hotels);
    } finally {
      _$HotelDetailsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDetailss(
      {required dynamic name,
      required dynamic price,
      required dynamic bannerImage}) {
    final _$actionInfo = _$HotelDetailsBaseActionController.startAction(
        name: 'HotelDetailsBase.setDetailss');
    try {
      return super
          .setDetailss(name: name, price: price, bannerImage: bannerImage);
    } finally {
      _$HotelDetailsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrHotel(dynamic id) {
    final _$actionInfo = _$HotelDetailsBaseActionController.startAction(
        name: 'HotelDetailsBase.setCurrHotel');
    try {
      return super.setCurrHotel(id);
    } finally {
      _$HotelDetailsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hotels: ${hotels},
name: ${name},
price: ${price},
bannerImage: ${bannerImage},
currHotel: ${currHotel}
    ''';
  }
}
