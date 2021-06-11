import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GeoLocationManager {
  String get gps {
    return _latLng ?? '';
  }

  String? _latLng;

  Future initialise() async {
    LocationPermission permission;

    // Test if location services are enabled.
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      print('Location services are disabled.');
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission != LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        print('Location permissions are denied');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      print(
          'Location permissions are permanently denied, we cannot request permissions.');
      return;
    }

    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      _latLng = '${position.latitude}:${position.longitude}';
      print(_latLng);
    } catch (ex) {
      print(ex);
    }
  }
}
