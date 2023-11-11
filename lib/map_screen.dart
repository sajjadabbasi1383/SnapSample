import 'package:flutter/material.dart';
import 'package:snap_map/constant/dimens.dart';
import 'package:snap_map/constant/my_text_style.dart';
import 'package:snap_map/widget/back_button.dart';

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
            color: Colors.blueGrey,
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(Dimens.large),
                child: ElevatedButton(
                    onPressed: () {}, child:  Text("انتخاب مبدا",style: MyTextStyle.main,)),
              )),
           MyBackButton(onPressed: (){},),
        ],
      ),
    ));
  }
}


