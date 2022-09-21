// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:get/get.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

import '../../common/controllers.dart';
import '../../common/tokens.dart';

final LatLngBounds sydneyBounds = LatLngBounds(
  southwest: const LatLng(-34.022631, 150.620685),
  northeast: const LatLng(-33.571835, 151.325952),
);

class MapUiBody extends StatefulWidget {
  const MapUiBody();

  @override
  State<StatefulWidget> createState() => MapUiBodyState();
}

class MapUiBodyState extends State<MapUiBody> {
  MapUiBodyState();

  MyLocationTrackingMode _myLocationTrackingMode = MyLocationTrackingMode.None;

  @override
  void initState() {
    super.initState();
  }

  void _onMapChanged() {
    setState(() {
      _extractMapInfo();
    });
  }

  void _extractMapInfo() {
    final position = ctlMapui.mapController!.cameraPosition;
    if (position != null) ctlMapui.cameraPosition.value = position;
  }

  @override
  void dispose() {
    ctlMapui.mapController?.removeListener(_onMapChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => MapboxMap(
          accessToken: AppToken.ACCESS_TOKEN,
          onMapCreated: onMapCreated,
          initialCameraPosition: ctlMapui.kInitialPosition,
          trackCameraPosition: true,
          compassEnabled: true,
          // cameraTargetBounds: _cameraTargetBounds,
          // minMaxZoomPreference: _minMaxZoomPreference,
          styleString: MapboxStyles.TRAFFIC_DAY,
          // rotateGesturesEnabled: _rotateGesturesEnabled,
          // scrollGesturesEnabled: _scrollGesturesEnabled,
          // tiltGesturesEnabled: _tiltGesturesEnabled,
          zoomGesturesEnabled: true,
          minMaxZoomPreference: const MinMaxZoomPreference(10, 17),
          myLocationEnabled: ctlMapui.myLocationEnabled.value,
          myLocationTrackingMode: MyLocationTrackingMode
              .TrackingGPS, //ctlMapui.myLocationTrackingMode.value,
          myLocationRenderMode: MyLocationRenderMode.GPS,
          onMapClick: (point, latLng) async {},

          onCameraTrackingDismissed: () {},
          onUserLocationUpdated: (location) {
            ctlMapui.cameraPosition.value =
                CameraPosition(target: location.position);
            // _addSourceAndLineLayer();
            print(
                "new location: ${location.position}, alt.: ${location.altitude}, bearing: ${location.bearing}, speed: ${location.speed}, horiz. accuracy: ${location.horizontalAccuracy}, vert. accuracy: ${location.verticalAccuracy}");
          },
        ));
  }

  void onMapCreated(MapboxMapController controller) {
    ctlMapui.mapController = controller;
    ctlMapui.mapController!.addListener(_onMapChanged);
    _extractMapInfo();

    ctlMapui.mapController!
        .getTelemetryEnabled()
        .then((isEnabled) => setState(() {
              ctlMapui.telemetryEnabled.value = isEnabled;
            }));
  }

  _addSourceAndLineLayer() async {
    // Can animate camera to focus on the item
    ctlMapui.mapController!.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(5.401290830433101, -3.9634873176256886))));

    // Add a polyLine between source and destination
    // Map geometry = getGeometryFromSharedPrefs();
    final _fills = {
      "type": "FeatureCollection",
      "features": [
        {
          "type": "Feature",
          "id": 0,
          "properties": <String, dynamic>{},
        },
      ]
    };

    // Remove lineLayer and source if it exists
    if (true) {
      await ctlMapui.mapController!.removeLayer("lines");
      await ctlMapui.mapController!.removeSource("fills");
    }

    // Add new source and lineLayer
    await ctlMapui.mapController!
        .addSource("fills", GeojsonSourceProperties(data: _fills));
    await ctlMapui.mapController!.addLineLayer(
        "fills",
        "lines",
        LineLayerProperties(
            lineColor: Colors.green.toHexStringRGB(),
            lineCap: "round",
            lineJoin: "round",
            lineWidth: 2));
  }
}
