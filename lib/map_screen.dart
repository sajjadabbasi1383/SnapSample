import 'package:flutter/material.dart';
import 'package:snap_map/dimens.dart';
import 'package:snap_map/my_text_style.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ElevatedButton(
                  onPressed: () {}, child:  Text("انتخاب مبدا",style: MyTextStyle.main,))),
          Positioned(
            top: Dimens.medium,
            left: Dimens.medium,
            child: Container(
              width: 55,
              height: 55,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(2,3),
                    blurRadius: 18
                  )
                ]
              ),
              child: IconButton(onPressed: () {

              },icon: Icon(Icons.arrow_back)),
            ),
          ),
        ],
      ),
    ));
  }
}
