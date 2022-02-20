// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel-details.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HotelDetails on HotelDetailsBase, Store {
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

  final _$locationAtom = Atom(name: 'HotelDetailsBase.location');

  @override
  String get location {
    _$locationAtom.reportRead();
    return super.location;
  }

  @override
  set location(String value) {
    _$locationAtom.reportWrite(value, super.location, () {
      super.location = value;
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

  final _$ratingAtom = Atom(name: 'HotelDetailsBase.rating');

  @override
  int get rating {
    _$ratingAtom.reportRead();
    return super.rating;
  }

  @override
  set rating(int value) {
    _$ratingAtom.reportWrite(value, super.rating, () {
      super.rating = value;
    });
  }

  final _$extrasAtom = Atom(name: 'HotelDetailsBase.extras');

  @override
  String get extras {
    _$extrasAtom.reportRead();
    return super.extras;
  }

  @override
  set extras(String value) {
    _$extrasAtom.reportWrite(value, super.extras, () {
      super.extras = value;
    });
  }

  final _$HotelDetailsBaseActionController =
      ActionController(name: 'HotelDetailsBase');

  @override
  void setDetails(
      {dynamic name,
      dynamic location,
      dynamic price,
      dynamic rating,
      dynamic extras}) {
    final _$actionInfo = _$HotelDetailsBaseActionController.startAction(
        name: 'HotelDetailsBase.setDetails');
    try {
      return super.setDetails(
          name: name,
          location: location,
          price: price,
          rating: rating,
          extras: extras);
    } finally {
      _$HotelDetailsBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
bannerImage: ${bannerImage},
name: ${name},
location: ${location},
price: ${price},
rating: ${rating},
extras: ${extras}
    ''';
  }
}
