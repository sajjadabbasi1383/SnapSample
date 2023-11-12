import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
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
  List currentWidgetList = [CurrentWidgetState.stateSelectOrigin];
  Widget markerIcon = SvgPicture.asset(
    "assets/icons/origin.svg",
    height: 100,
    width: 40,
  );
  MapController mapController = MapController(
      initMapWithUserPosition: const UserTrackingOption(enableTracking: false),
      initPosition: GeoPoint(latitude: 36.2884, longitude: 59.6157));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.blueGrey,
          ),
          currentWidget(),
          MyBackButton(
            onPressed: () {
              setState(() {
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

  Positioned origin() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.all(Dimens.large),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  currentWidgetList
                      .add(CurrentWidgetState.stateSelectDestination);
                });
              },
              child: Text(
                "انتخاب مبدا",
                style: MyTextStyle.main,
              )),
        ));
  }

  Positioned destination() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.all(Dimens.large),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  currentWidgetList.add(CurrentWidgetState.stateRequestDriver);
                });
              },
              child: Text(
                "انتخاب مقصد",
                style: MyTextStyle.main,
              )),
        ));
  }

  Positioned reqDriver() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.all(Dimens.large),
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "درخواست راننده",
                style: MyTextStyle.main,
              )),
        ));
  }
}
