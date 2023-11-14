import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snap_map/constant/dimens.dart';
import 'package:snap_map/constant/my_text_style.dart';
import 'package:snap_map/widget/back_button.dart';

class CurrentWidgetState {
  CurrentWidgetState._();

  static const stateSelectOrigin = 0;
  static const stateSelectDestination = 1;
  static const stateRequestDriver = 2;
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<GeoPoint> geoPoint = [];
  String distance = "در حال محاسبه فاصله...";
  List currentWidgetList = [CurrentWidgetState.stateSelectOrigin];
  Widget markerIcon = SvgPicture.asset(
    "assets/icons/origin.svg",
    height: 110,
    width: 44,
  );
  Widget originMarkerIcon = SvgPicture.asset(
    "assets/icons/origin.svg",
    height: 50,
    width: 20,
  );
  Widget destMarkerIcon = SvgPicture.asset(
    "assets/icons/destination.svg",
    height: 50,
    width: 20,
  );
  MapController mapController = MapController(
      initPosition: GeoPoint(latitude: 36.2884, longitude: 59.6157));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: OSMFlutter(
              controller: mapController,
              osmOption: OSMOption(
                  zoomOption: const ZoomOption(
                      initZoom: 14,
                      minZoomLevel: 8,
                      maxZoomLevel: 18,
                      stepZoom: 1),
                  isPicker: true,
                  markerOption: MarkerOption(
                      advancedPickerMarker: MarkerIcon(
                    iconWidget: markerIcon,
                  ))),
              mapIsLoading: const SpinKitCircle(color: Colors.black),
            ),
          ),
          currentWidget(),
          MyBackButton(
            onPressed: () {
              setState(() {
                if (geoPoint.isNotEmpty) {
                  geoPoint.removeLast();
                  markerIcon = SvgPicture.asset(
                    "assets/icons/origin.svg",
                    height: 100,
                    width: 40,
                  );
                  mapController.init();
                }

                if (currentWidgetList.length > 1) {
                  currentWidgetList.removeLast();
                }
              });
            },
          ),
        ],
      ),
    ));
  }

  Widget currentWidget() {
    Widget widget = origin();
    switch (currentWidgetList.last) {
      case CurrentWidgetState.stateSelectOrigin:
        widget = origin();
        break;
      case CurrentWidgetState.stateSelectDestination:
        widget = destination();
        break;
      case CurrentWidgetState.stateRequestDriver:
        widget = reqDriver();
        break;
    }
    return widget;
  }

  Widget origin() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.all(Dimens.large),
          child: ElevatedButton(
              onPressed: () async {
                GeoPoint originGeoPoint = await mapController
                    .getCurrentPositionAdvancedPositionPicker();
                log("${originGeoPoint.latitude} ::: ${originGeoPoint.longitude}");
                geoPoint.add(originGeoPoint);

                markerIcon = SvgPicture.asset(
                  "assets/icons/destination.svg",
                  height: 110,
                  width: 44,
                );

                setState(() {
                  currentWidgetList
                      .add(CurrentWidgetState.stateSelectDestination);
                });

                mapController.init();
              },
              child: Text(
                "انتخاب مبدا",
                style: MyTextStyle.main,
              )),
        ));
  }

  Widget destination() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.all(Dimens.large),
          child: ElevatedButton(
              onPressed: () async {
                await mapController
                    .getCurrentPositionAdvancedPositionPicker()
                    .then((value) {
                  geoPoint.add(value);
                });

                mapController.cancelAdvancedPositionPicker();


                await mapController.addMarker(geoPoint.first,
                    markerIcon: MarkerIcon(
                      iconWidget: originMarkerIcon,
                    ));
                await mapController.addMarker(geoPoint.last,
                    markerIcon: MarkerIcon(
                      iconWidget: destMarkerIcon,
                    ));

                setState(() {
                  currentWidgetList.add(CurrentWidgetState.stateRequestDriver);
                });

                await distance2point(geoPoint.first, geoPoint.last)
                    .then((value) {
                  if (value <= 1000) {
                    distance = "فاصله مبدا تا مقصد ${value.toInt()} متر";
                  } else {
                    distance = "فاصله مبدا تا مقصد ${value ~/ 1000} کیلومتر";
                  }
                });
              },
              child: Text(
                "انتخاب مقصد",
                style: MyTextStyle.main,
              )),
        ));
  }

  Widget reqDriver() {
    mapController.zoomOut();
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.all(Dimens.large),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.medium),
                  color: Colors.white
                ),
                child: Center(child: Text(distance),),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "درخواست راننده",
                      style: MyTextStyle.main,
                    )),
              ),
            ],
          ),
        ));
  }
}
