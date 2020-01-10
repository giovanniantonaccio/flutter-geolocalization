// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Localization on _LocalizationBase, Store {
  Computed<String> _$userAddressComputed;

  @override
  String get userAddress =>
      (_$userAddressComputed ??= Computed<String>(() => super.userAddress))
          .value;
  Computed<String> _$necklaceAddressComputed;

  @override
  String get necklaceAddress => (_$necklaceAddressComputed ??=
          Computed<String>(() => super.necklaceAddress))
      .value;

  final _$userFullAddressAtom = Atom(name: '_LocalizationBase.userFullAddress');

  @override
  Placemark get userFullAddress {
    _$userFullAddressAtom.context.enforceReadPolicy(_$userFullAddressAtom);
    _$userFullAddressAtom.reportObserved();
    return super.userFullAddress;
  }

  @override
  set userFullAddress(Placemark value) {
    _$userFullAddressAtom.context.conditionallyRunInAction(() {
      super.userFullAddress = value;
      _$userFullAddressAtom.reportChanged();
    }, _$userFullAddressAtom, name: '${_$userFullAddressAtom.name}_set');
  }

  final _$necklaceFullAddressAtom =
      Atom(name: '_LocalizationBase.necklaceFullAddress');

  @override
  Placemark get necklaceFullAddress {
    _$necklaceFullAddressAtom.context
        .enforceReadPolicy(_$necklaceFullAddressAtom);
    _$necklaceFullAddressAtom.reportObserved();
    return super.necklaceFullAddress;
  }

  @override
  set necklaceFullAddress(Placemark value) {
    _$necklaceFullAddressAtom.context.conditionallyRunInAction(() {
      super.necklaceFullAddress = value;
      _$necklaceFullAddressAtom.reportChanged();
    }, _$necklaceFullAddressAtom,
        name: '${_$necklaceFullAddressAtom.name}_set');
  }

  final _$getUserCurrentLocationAsyncAction =
      AsyncAction('getUserCurrentLocation');

  @override
  Future getUserCurrentLocation() {
    return _$getUserCurrentLocationAsyncAction
        .run(() => super.getUserCurrentLocation());
  }

  final _$getNecklaceCurrentLocationAsyncAction =
      AsyncAction('getNecklaceCurrentLocation');

  @override
  Future getNecklaceCurrentLocation(double latitude, double longitude) {
    return _$getNecklaceCurrentLocationAsyncAction
        .run(() => super.getNecklaceCurrentLocation(latitude, longitude));
  }
}
