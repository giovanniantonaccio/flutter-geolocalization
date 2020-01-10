import 'package:mobx/mobx.dart';
import 'package:geolocator/geolocator.dart';

part 'localization.g.dart';

class Localization = _LocalizationBase with _$Localization;

abstract class _LocalizationBase with Store {
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;

  @observable
  Placemark userFullAddress;

  @observable
  Placemark necklaceFullAddress;

  @computed
  String get userAddress => userFullAddress != null
      ? '${userFullAddress.thoroughfare}, ${userFullAddress.subThoroughfare}, ${userFullAddress.subLocality}, ${userFullAddress.postalCode}, ${userFullAddress.subAdministrativeArea} - ${userFullAddress.administrativeArea}'
      : '';

  @computed
  String get necklaceAddress => necklaceFullAddress != null
      ? '${necklaceFullAddress.thoroughfare}, ${necklaceFullAddress.subThoroughfare}, ${necklaceFullAddress.subLocality}, ${necklaceFullAddress.postalCode}, ${necklaceFullAddress.subAdministrativeArea} - ${necklaceFullAddress.administrativeArea}'
      : '';

  @action
  getUserCurrentLocation() async {
    try {
      Position position = await geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);

      List<Placemark> placemark = await geolocator.placemarkFromCoordinates(
          position.latitude, position.longitude);

      userFullAddress = placemark[0];
    } catch (e) {
      print(e);
    }
  }

  @action
  getNecklaceCurrentLocation(double latitude, double longitude) async {
    try {
      List<Placemark> placemark =
          await geolocator.placemarkFromCoordinates(latitude, longitude);

      necklaceFullAddress = placemark[0];
    } catch (e) {
      print(e);
    }
  }
}
