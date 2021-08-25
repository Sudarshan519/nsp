import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GeoLocationManager {
  String get gps {
    return _latLng ?? '';
  }

  String? _latLng;

  ///makes sure to ask for location persmission when denied
  ///
  ///and open location services if turned off
  Future<Either<Position, String>> getForcedLocation() async {
    final isLocationServiceEnabled =
        await Geolocator.isLocationServiceEnabled();
    if (!isLocationServiceEnabled) {
      await Geolocator.openLocationSettings();
      return const Right('Please turn on location settings!');
    }

    var perm = await Geolocator.checkPermission();
    if (perm == LocationPermission.deniedForever ||
        perm == LocationPermission.denied) {
      perm = await Geolocator.requestPermission();
      if (perm == LocationPermission.deniedForever ||
          perm == LocationPermission.denied) {
        return const Right('Please enable location permission!');
      }
    }
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium);

    return Left(position);
  }

  Future initialise() async {
    LocationPermission permission;

    // Test if location services are enabled.
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      debugPrint('Location services are disabled.');
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
        debugPrint('Location permissions are denied');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      debugPrint(
          'Location permissions are permanently denied, we cannot request permissions.');
      return;
    }

    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      _latLng = '${position.latitude}:${position.longitude}';
      debugPrint(_latLng);
    } catch (ex) {
      debugPrint(ex.toString());
    }
  }
}
