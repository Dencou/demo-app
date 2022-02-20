// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user-stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on UserStoreBase, Store {
  final _$bannerImageAtom = Atom(name: 'UserStoreBase.bannerImage');

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

  final _$nameAtom = Atom(name: 'UserStoreBase.name');

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

  final _$locationAtom = Atom(name: 'UserStoreBase.location');

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

  final _$priceAtom = Atom(name: 'UserStoreBase.price');

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

  final _$ratingAtom = Atom(name: 'UserStoreBase.rating');

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

  final _$extrasAtom = Atom(name: 'UserStoreBase.extras');

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

  final _$UserStoreBaseActionController =
      ActionController(name: 'UserStoreBase');

  @override
  void setDetails(
      {dynamic name,
      dynamic location,
      dynamic price,
      dynamic rating,
      dynamic extras}) {
    final _$actionInfo = _$UserStoreBaseActionController.startAction(
        name: 'UserStoreBase.setDetails');
    try {
      return super.setDetails(
          name: name,
          location: location,
          price: price,
          rating: rating,
          extras: extras);
    } finally {
      _$UserStoreBaseActionController.endAction(_$actionInfo);
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
