import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snap_map/constant/my_text_style.dart';
import 'package:snap_map/gen/assets.gen.dart';

List<Widget> gideViewItems = [
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
];
List<String> imgList = [
  Assets.images.bannerBlacFri.path,
  Assets.images.bannerHaraj2.path,
  Assets.images.bannerCompany.path,
  Assets.images.bannerMazMaz.path,
  Assets.images.bannerEco.path,
  Assets.images.bannerDisFood.path,
];
List<String> imgFrameList = [
  Assets.images.frameNan.path,
  Assets.images.frameFrut.path,
  Assets.images.frameProto.path,
  Assets.images.frameShirini.path,
  Assets.images.frameCafe.path,
  Assets.images.frameIce.path,
  Assets.images.frameFlower.path,
  Assets.images.frameLabani.path,
  Assets.images.frameAtari.path,
  Assets.images.frameAjil.path,
  Assets.images.frameSalamat.path,
  Assets.images.frameOther.path,
];


class DiscountListItemModel{
   late String iconUrl;
   late String title;
   late String score;
   late String imgUrl;

   DiscountListItemModel({required this.iconUrl,
     required this.title,
     required this.imgUrl,
     required this.score,});
}

List<DiscountListItemModel> discountListItems=[
  DiscountListItemModel(imgUrl: Assets.images.mizban.path,title: "رزرو هتل میزبان بابلسر",score: "1200",iconUrl: Assets.icons.hotel2.path,),
  DiscountListItemModel(imgUrl: Assets.images.bimeMobile.path,title: "بیمه موبایل",score: "1200",iconUrl: Assets.icons.insurance.path,),
  DiscountListItemModel(imgUrl: Assets.images.hotel.path,title: "اولین رزرو هتل",score: "1000",iconUrl: Assets.icons.hotel2.path,),
  DiscountListItemModel(imgUrl: Assets.images.flight.path,title: "اولین بلیت پرواز داخلی",score: "1200",iconUrl: Assets.icons.flight.path,),
  DiscountListItemModel(imgUrl: Assets.images.sibApp.path,title: "اشتراک سیب اپ",score: "1000",iconUrl: Assets.icons.sibApp.path,),
  DiscountListItemModel(imgUrl: Assets.images.wistore.path,title: "خرید اینترنتی هدیه از ویستور",score: "1000",iconUrl: Assets.icons.vistor.path,),
  DiscountListItemModel(imgUrl: Assets.images.loyaltyClubTrain.path,title: "اولین بلیت قطار",score: "1500",iconUrl: Assets.icons.snapptripTrain.path,),
  DiscountListItemModel(imgUrl: Assets.images.taghcheBanner.path,title: "اشتراک طاقچه",score: "1200",iconUrl: Assets.icons.taghche2.path,),
  DiscountListItemModel(imgUrl: Assets.images.golsetan.path,title: "خرید گل و گیاه از گلستان",score: "1000",iconUrl: Assets.icons.golsetan.path,),
  DiscountListItemModel(imgUrl: Assets.images.bus.path,title: "خرید بلیت اتوبوس",score: "1000",iconUrl: Assets.icons.bus2.path,),
  DiscountListItemModel(imgUrl: Assets.images.intflight.path,title: "اولین بلیط پرواز خارجی",score: "1500",iconUrl: Assets.icons.flight2.path,),
];

class DetailListItemModel{
   late String iconUrl;
   late String title;
   late String buttonTitle;
   late String imgUrl;

   DetailListItemModel({required this.iconUrl,
     required this.title,
     required this.imgUrl,
     required this.buttonTitle,});
}

List<DetailListItemModel> detailListItems=[
  DetailListItemModel(imgUrl: Assets.images.arayeshi.path,title: "جمعه پر تخفیف سرویس اعتباری",buttonTitle: "خرید کنید",iconUrl: Assets.icons.credit.path,),
  DetailListItemModel(imgUrl: Assets.images.digital.path,title: "جمعه پر تخفیف سرویس اعتباری",buttonTitle: "خرید کنید",iconUrl: Assets.icons.insurance.path,),
  DetailListItemModel(imgUrl: Assets.images.poshak.path,title: "جمعه پر تخفیف سرویس اعتباری",buttonTitle: "خرید کنید",iconUrl: Assets.icons.hotel2.path,),
  DetailListItemModel(imgUrl: Assets.images.home.path,title: "جمعه پر تخفیف سرویس اعتباری",buttonTitle: "خرید کنید",iconUrl: Assets.icons.flight.path,),
  DetailListItemModel(imgUrl: Assets.images.sargarmi.path,title: "جمعه پر تخفیف سرویس اعتباری",buttonTitle: "خرید کنید",iconUrl: Assets.icons.sibApp.path,),

];
List<DetailListItemModel> detailListItems2=[
  DetailListItemModel(imgUrl: Assets.images.labaniyat.path,title: "سفارش محصولات لبنی",buttonTitle: "سفارش دهید",iconUrl: Assets.icons.food.path,),
  DetailListItemModel(imgUrl: Assets.images.goll.path,title: "سفارش گل و گیاه",buttonTitle: "سفارش دهید",iconUrl: Assets.icons.food.path,),
  DetailListItemModel(imgUrl: Assets.images.atari.path,title: "سفارش محصولات عطاری",buttonTitle: "سفارش دهید",iconUrl: Assets.icons.food.path,),
  DetailListItemModel(imgUrl: Assets.images.behdashtVaSalamat.path,title: "سفارش محصولات سلامت و زیبایی",buttonTitle: "سفارش دهید",iconUrl: Assets.icons.food.path,),

];