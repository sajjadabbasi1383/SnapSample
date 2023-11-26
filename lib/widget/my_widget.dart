import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant/dimens.dart';
import '../constant/my_text_style.dart';
import '../gen/assets.gen.dart';
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
              padding: const EdgeInsets.only(left: 10),
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

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40),
        child: Container(
          height: 90,
          decoration: BoxDecoration(boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 30,
            )
          ], borderRadius: BorderRadius.circular(18), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.taxi.path),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "اسنپ",
                    style: MyTextStyle.textStyle2,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.food.path),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "غذا",
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
                    Assets.icons.spdiscount.path,
                    width: 52.2,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "سوپرمارکت",
                    style: MyTextStyle.textStyle2,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.bike.path),
                  const SizedBox(
                    height: 2.7,
                  ),
                  Text(
                    "اسنپ باکس",
                    style: MyTextStyle.textStyle2,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SquareContainerRow extends StatelessWidget {
  const SquareContainerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    const SizedBox(width: 6,),
                    const Text(
                      "به دلخواه خود تخفیف بگیرید",
                    ),
                  ],
                ),
                const Text(
                  "مشاهده همه",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
             const SizedBox(height: 8,),
             Align(
              alignment: Alignment.centerRight,
              child: Text(
                "انتخاب از بین پیشنهاد های متنوع",
                style: MyTextStyle.textStyle2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DiscountListView extends StatelessWidget {
  const DiscountListView({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 12, 10),
      child: SizedBox(
          height: MediaQuery.of(context).size.height/3.1,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: discountListItems.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.5,
                    height: MediaQuery.of(context).size.height/3.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                        )]
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                            child: Image.asset(discountListItems[index].imgUrl,)),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(discountListItems[index].iconUrl,width: 37,),
                              const SizedBox(width: 8,),
                              Text(discountListItems[index].title,style: MyTextStyle.textStyle3,)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Row(
                            children: [
                              Image.asset(Assets.icons.gem.path,width: 15,),
                              const SizedBox(width: 7,),
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text("امتیاز مورد نیاز: ${discountListItems[index].score}",style: MyTextStyle.textStyle2,))
                            ],
                          ),
                        ),
                        const Divider(color: Colors.black38),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("امتیاز کافی برای دریافت کد",style: MyTextStyle.textStyle3,),
                            const Text("مشاهده",style: TextStyle(color: Colors.green),),
                          ],
                        ),
                      ],
                    ),
                  )
              );
            },)),
    );
  }
}


class DiscountListItem extends StatelessWidget {

  final String iconUrl;
  final String title;
  final String score;
  final String imgUrl;

  const DiscountListItem({
    required this.iconUrl,
    required this.title,
    required this.imgUrl,
    required this.score,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: MediaQuery.of(context).size.width/1.5,
        height: MediaQuery.of(context).size.height/3.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
          )]
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                child: Image.asset(imgUrl,)),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(iconUrl,width: 37,),
                  const SizedBox(width: 8,),
                  Text(title,style: MyTextStyle.textStyle3,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Row(
                children: [
                  Image.asset(Assets.icons.gem.path,width: 15,),
                  const SizedBox(width: 7,),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text("امتیاز مورد نیاز: $score",style: MyTextStyle.textStyle2,))
                ],
              ),
            ),
            const Divider(color: Colors.black38),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("امتیاز کافی برای دریافت کد",style: MyTextStyle.textStyle3,),
                const Text("مشاهده",style: TextStyle(color: Colors.green),),
              ],
            ),
          ],
        ),
      )
    );
  }
}
