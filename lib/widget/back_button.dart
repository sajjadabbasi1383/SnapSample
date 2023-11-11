import 'package:flutter/material.dart';

import '../constant/dimens.dart';

class MyBackButton extends StatelessWidget {

  Function() onPressed;

  MyBackButton({super.key, required this.onPressed});

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