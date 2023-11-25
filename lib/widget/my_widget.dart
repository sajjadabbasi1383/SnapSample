import 'package:flutter/material.dart';

import '../constant/dimens.dart';
import '../model/model.dart';
class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.fromLTRB(22,2,22,2),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: imgFrameList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image.asset(imgFrameList[index],height: 100,width: 100,),
            );
          },
        ),
      ),
    );
  }
}

class MyBackButton extends StatelessWidget {

  final Function() onPressed;

  const MyBackButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
        child: IconButton(onPressed: onPressed,icon: const Icon(Icons.arrow_back)),
      ),
    );
  }
}