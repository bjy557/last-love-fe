import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_permission_controller.g.dart';

enum LocationConsentStage {
  idle,
  requesting,
  granted,
  denied,
  deniedForever,
  unavailable,
  fetching,
  failed,
}

class LocationConsentState {
  const LocationConsentState({
    this.stage = LocationConsentStage.idle,
    this.latitude,
    this.longitude,
    this.message,
  });

  final LocationConsentStage stage;
  final double? latitude;
  final double? longitude;
  final String? message;

  bool get hasFix => latitude != null && longitude != null;

  LocationConsentState copyWith({
    LocationConsentStage? stage,
    double? latitude,
    double? longitude,
    String? message,
  }) =>
      LocationConsentState(
        stage: stage ?? this.stage,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        message: message ?? this.message,
      );
}

@Riverpod(keepAlive: false)
class LocationPermissionController extends _$LocationPermissionController {
  @override
  LocationConsentState build() => const LocationConsentState();

  /// Requests permission and (on grant) a single position fix. Coordinates
  /// are kept only in memory; the caller forwards them to the BE.
  Future<bool> requestAndFetch() async {
    state = const LocationConsentState(stage: LocationConsentStage.requesting);

    final enabled = await Geolocator.isLocationServiceEnabled();
    if (!enabled) {
      state = const LocationConsentState(
        stage: LocationConsentStage.unavailable,
        message: '기기 위치 서비스가 꺼져있어요.',
      );
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.denied) {
      state = const LocationConsentState(stage: LocationConsentStage.denied);
      return false;
    }
    if (permission == LocationPermission.deniedForever) {
      state = const LocationConsentState(
        stage: LocationConsentStage.deniedForever,
      );
      return false;
    }

    state = const LocationConsentState(stage: LocationConsentStage.fetching);
    try {
      // Request a single low-accuracy fix - city/구 granularity is enough.
      final pos = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.low,
          timeLimit: Duration(seconds: 15),
        ),
      );
      state = LocationConsentState(
        stage: LocationConsentStage.granted,
        latitude: pos.latitude,
        longitude: pos.longitude,
      );
      return true;
    } on Object catch (e) {
      state = LocationConsentState(
        stage: LocationConsentStage.failed,
        message: e.toString(),
      );
      return false;
    }
  }
}
