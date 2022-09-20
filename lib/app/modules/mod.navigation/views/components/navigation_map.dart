import 'dart:async';
import 'package:driver_app/app/modules/mod.order/views/mod_order_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mapbox_navigation/library.dart';
import 'package:get/get.dart';

class NavigationMapView extends StatefulWidget {
  @override
  _NavigationMapViewState createState() => _NavigationMapViewState();
}

class _NavigationMapViewState extends State<NavigationMapView> {
  String _platformVersion = 'Unknown';
  String _instruction = "";
  final _origin = WayPoint(
      name: "CARREFOUR 1",
      latitude: 5.4027660067717225,
      longitude: -3.9617239331883094);
  final _stop1 = WayPoint(
      name: "CARREFOUR 2",
      latitude: 5.399550965427537,
      longitude: -3.9655219408449014);
  final _stop2 = WayPoint(
    name: "CARREFOUR 3",
    latitude: 5.39927325341485,
    longitude: -3.962002882903181,
  );
  final _stop3 = WayPoint(
      name: "CARREFOUR 4",
      latitude: 5.399123716124545,
      longitude: -3.960586676658342);
  final _destination = WayPoint(
      name: "CARREFOUR 5",
      latitude: 5.398354666620394,
      longitude: -3.957689891157535);

  late MapBoxNavigation _directions;
  late MapBoxOptions _options;

  bool _isMultipleStop = false;
  late double _distanceRemaining = 0, _durationRemaining = 0;
  late MapBoxNavigationViewController _controller;
  bool _routeBuilt = false;
  bool _isNavigating = false;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initialize() async {
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    _directions = MapBoxNavigation(
      onRouteEvent: _onEmbeddedRouteEvent,
    );
    _options = MapBoxOptions(
        //initialLatitude: 36.1175275,
        //initialLongitude: -115.1839524,
        zoom: 15.0,
        tilt: 0.0,
        bearing: 0.0,
        enableRefresh: false,
        alternatives: true,
        voiceInstructionsEnabled: true,
        bannerInstructionsEnabled: true,
        allowsUTurnAtWayPoints: true,
        mode: MapBoxNavigationMode.drivingWithTraffic,
        units: VoiceUnits.imperial,
        simulateRoute: true,
        animateBuildRoute: true,
        longPressDestinationEnabled: true,
        language: "en");

    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await _directions.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  bool isOpened = true;
  Future showPane() async {
    Timer.periodic(const Duration(seconds: 7), (Timer timer) async {
      print("OKOKOKOKOKOKOKOK");
      if (isOpened) {
        Get.snackbar("Bonjour", "je suis ce que je suis !");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            color: Colors.grey,
            child: MapBoxNavigationView(
                options: MapBoxOptions(
                  zoom: 16.0,
                  // tilt: 0.0,
                  // bearing: 0.0,
                  enableRefresh: true,
                  mapStyleUrlDay: "mapbox://styles/mapbox/navigation-day-v1",
                  mapStyleUrlNight:
                      "mapbox://styles/mapbox/navigation-night-v1",
                  isOptimized: true,
                  alternatives: true,
                  voiceInstructionsEnabled: true,
                  bannerInstructionsEnabled: true,
                  allowsUTurnAtWayPoints: true,
                  mode: MapBoxNavigationMode.drivingWithTraffic,
                  units: VoiceUnits.metric,
                  simulateRoute: true,
                  animateBuildRoute: true,
                  longPressDestinationEnabled: true,
                  language: "fr",
                ),
                onRouteEvent: _onEmbeddedRouteEvent,
                onCreated: (MapBoxNavigationViewController controller) async {
                  _controller = controller;
                  controller.initialize();
                }),
          ),
          Align(alignment: Alignment.bottomCenter, child: ModOrderView()),
        ]),
      ),
    );
  }

  Future<void> _onEmbeddedRouteEvent(e) async {
    // _distanceRemaining = await _directions.distanceRemaining;
    // _durationRemaining = await _directions.durationRemaining;

    switch (e.eventType) {
      case MapBoxEvent.progress_change:
        var progressEvent = e.data as RouteProgressEvent;
        if (progressEvent.currentStepInstruction != null)
          _instruction = progressEvent.currentStepInstruction!;
        break;
      case MapBoxEvent.route_building:
      case MapBoxEvent.route_built:
        setState(() {
          _routeBuilt = true;
        });
        break;
      case MapBoxEvent.route_build_failed:
        setState(() {
          _routeBuilt = false;
        });
        break;
      case MapBoxEvent.navigation_running:
        setState(() {
          _isNavigating = true;
        });
        break;
      case MapBoxEvent.on_arrival:
        if (!_isMultipleStop) {
          await Future.delayed(Duration(seconds: 3));
          await _controller.finishNavigation();
        } else {}
        break;
      case MapBoxEvent.navigation_finished:
      case MapBoxEvent.navigation_cancelled:
        setState(() {
          _routeBuilt = false;
          _isNavigating = false;
        });
        break;
      default:
        break;
    }
    setState(() {});
  }
}
