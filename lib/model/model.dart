import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snap_map/constant/my_text_style.dart';
import 'package:snap_map/gen/assets.gen.dart';

List<Widget> gideViewItems = [
  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(
        height: 4.7,
      ),
      Image.asset(
        Assets.icons.fdomT.path,
        width: 53,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "بلیت سفر",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // const SizedBox(
      //   height: 4.7,
      // ),
      SvgPicture.asset(
        Assets.icons.shop.path,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "فروشگاه",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // const SizedBox(
      //   height: 4.7,
      // ),
      SvgPicture.asset(
        Assets.icons.credit.path,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "سرویس اعتباری",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // const SizedBox(
      //   height: 4.7,
      // ),
      SvgPicture.asset(
        Assets.icons.moving.path,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "وانت و کامیون",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // const SizedBox(
      //   height: 4.7,
      // ),
      SvgPicture.asset(
        Assets.icons.hotel.path,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "هتل",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // const SizedBox(
      //   height: 4.7,
      // ),
      SvgPicture.asset(
        Assets.icons.pharmacy.path,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "داروخانه",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // const SizedBox(
      //   height: 4.7,
      // ),
      SvgPicture.asset(
        Assets.icons.doctor.path,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "پزشک و مشاور",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // const SizedBox(
      //   height: 4.7,
      // ),
      SvgPicture.asset(
        Assets.icons.driver.path,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "ثبت نام رانندگان",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // const SizedBox(
      //   height: 4.7,
      // ),
      SvgPicture.asset(
        Assets.icons.investment.path,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "سپرده گذاری",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(
        height: 4.7,
      ),
      Image.asset(
        Assets.icons.insdiscount.path,
        width: 51,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "بیمه",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(
        height: 6,
      ),
      Image.asset(
        Assets.icons.corporate.path,
        width: 51,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "پنل سازمانی",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const SizedBox(
        height: 7,
      ),
      Image.asset(
        Assets.icons.line.path,
        width: 51,
      ),
      const SizedBox(
        height: 3,
      ),
      Text(
        "اسنپ لاین",
        style: MyTextStyle.textStyle2,
      ),
    ],
  ),
];
List<String> imgList = [
  Assets.images.bannerBlacFri.path,
  Assets.images.bannerHaraj2.path,
  Assets.images.bannerCompany.path,
  Assets.images.bannerMazMaz.path,
  Assets.images.bannerEco.path,
  Assets.images.bannerDisFood.path,
];