import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snap_map/map_screen.dart';

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
      padding: const EdgeInsets.fromLTRB(22, 2, 22, 2),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: imgFrameList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                imgFrameList[index],
                height: 100,
                width: 100,
              ),
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
      right: Dimens.medium,
      child: Container(
        width: 55,
        height: 55,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(2, 3), blurRadius: 18)
            ]),
        child: IconButton(
            onPressed: onPressed, icon: const Icon(Icons.arrow_back)),
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
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MapScreen(),)),
                child: Column(
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

class SquareContainerColumn extends StatelessWidget {
  const SquareContainerColumn({
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
                    const SizedBox(
                      width: 8,
                    ),
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
            const SizedBox(
              height: 8,
            ),
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

class SquareContainerRow extends StatelessWidget {
  final Color color;
  final String title;

  const SquareContainerRow({
    required this.color,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 5, 22, 5),
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  title,
                ),
              ],
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
          height: MediaQuery.of(context).size.height / 3,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: discountListItems.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.height / 3.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                          )
                        ]),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15)),
                            child: Image.asset(
                              discountListItems[index].imgUrl,
                              height: MediaQuery.of(context).size.height / 6.5,
                              width: MediaQuery.of(context).size.width / 1.3,
                              fit: BoxFit.fill,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                discountListItems[index].iconUrl,
                                width: 37,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                discountListItems[index].title,
                                style: MyTextStyle.textStyle3,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Row(
                            children: [
                              Image.asset(
                                Assets.icons.gem.path,
                                width: 15,
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "امتیاز مورد نیاز: ${discountListItems[index].score}",
                                    style: MyTextStyle.textStyle2,
                                  ))
                            ],
                          ),
                        ),
                        const Divider(color: Colors.black38),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "امتیاز کافی برای دریافت کد",
                              style: MyTextStyle.textStyle3,
                            ),
                            const Text(
                              "مشاهده",
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ));
            },
          )),
    );
  }
}

class DetailBanner extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String buttonTitle;
  final String imgUrl;

  const DetailBanner({
    required this.iconUrl,
    required this.title,
    required this.imgUrl,
    required this.buttonTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 4.4,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 20,
                )
              ]),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  child: Image.asset(
                    imgUrl,
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 7,
                    fit: BoxFit.fill,
                  )),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          iconUrl,
                          width: 28,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          title,
                          style: MyTextStyle.textStyle3,
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                      },
                      style: const ButtonStyle(
                          side: MaterialStatePropertyAll(
                            BorderSide(width: 1.2, color: Colors.green),
                          ),
                          maximumSize: MaterialStatePropertyAll(Size(104, 34)),
                          minimumSize: MaterialStatePropertyAll(Size(104, 34)),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          textStyle: MaterialStatePropertyAll(
                              TextStyle(fontFamily: "Vazir")),
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.green)),
                      child: Text(
                        buttonTitle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class DetailBannerListView extends StatelessWidget {
  const DetailBannerListView({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4.3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: detailListItems.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.28,
                  height: MediaQuery.of(context).size.height / 4.7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20,
                        )
                      ]),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15)),
                          child: Image.asset(
                            detailListItems[index].imgUrl,
                            width: MediaQuery.of(context).size.width / 1.1,
                            height: MediaQuery.of(context).size.height / 7.9,
                            fit: BoxFit.cover,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  detailListItems[index].iconUrl,
                                  width: 28,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 3.1,
                                  child: Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    detailListItems[index].title,
                                    style: MyTextStyle.textStyle3,
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                  side: MaterialStatePropertyAll(
                                    BorderSide(width: 1.2, color: Colors.green),
                                  ),
                                  maximumSize: MaterialStatePropertyAll(Size(104, 34)),
                                  minimumSize: MaterialStatePropertyAll(Size(104, 34)),
                                  backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                                  textStyle: MaterialStatePropertyAll(
                                      TextStyle(fontFamily: "Vazir")),
                                  foregroundColor:
                                  MaterialStatePropertyAll(Colors.green)),
                              child:  Text(
                                detailListItems[index].buttonTitle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
          },
      ),
    );
  }
}

class DetailBannerListView2 extends StatelessWidget {
  const DetailBannerListView2({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4.3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: detailListItems2.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.28,
                height: MediaQuery.of(context).size.height / 4.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                      )
                    ]),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                        child: Image.asset(
                          detailListItems2[index].imgUrl,
                          width: MediaQuery.of(context).size.width / 1.1,
                          height: MediaQuery.of(context).size.height / 7.9,
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                detailListItems2[index].iconUrl,
                                width: 28,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 3.1,
                                child: Text(
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  detailListItems2[index].title,
                                  style: MyTextStyle.textStyle3,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                side: MaterialStatePropertyAll(
                                  BorderSide(width: 1.2, color: Colors.green),
                                ),
                                maximumSize: MaterialStatePropertyAll(Size(109, 34)),
                                minimumSize: MaterialStatePropertyAll(Size(109, 34)),
                                backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                                textStyle: MaterialStatePropertyAll(
                                    TextStyle(fontFamily: "Vazir")),
                                foregroundColor:
                                MaterialStatePropertyAll(Colors.green)),
                            child:  Text(
                              detailListItems2[index].buttonTitle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
