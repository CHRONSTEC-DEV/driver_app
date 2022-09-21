import 'package:get/get.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class MapUiController extends GetxController {
  final kInitialPosition = const CameraPosition(
    target: LatLng(5.401290830433101, -3.9634873176256886),
    zoom: 14.0,
  );

  MapboxMapController? mapController;
  final cameraPosition = const CameraPosition(
    target: LatLng(5.401290830433101, -3.9634873176256886),
    zoom: 14.0,
  ).obs;

  final telemetryEnabled = true.obs;
  final myLocationEnabled = true.obs;
  final myLocationTrackingMode = MyLocationTrackingMode.None.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  myLocationTrackingModeCycler() {
    final MyLocationTrackingMode nextType = MyLocationTrackingMode.values[
        (myLocationTrackingMode.value.index + 1) %
            MyLocationTrackingMode.values.length];
    myLocationTrackingMode.value = nextType;
    printInfo(info: "${myLocationTrackingMode.value}");
  }

  myLocationToggler() {
    myLocationEnabled.value = !myLocationEnabled.value;
    printInfo(info: "${myLocationEnabled.value}");
  }
}
