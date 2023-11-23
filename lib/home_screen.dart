import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snap_map/constant/my_text_style.dart';
import 'package:snap_map/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      initialIndex: 3,
      length: 4,
      animationDuration: const Duration(milliseconds: 300),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottom: const TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                  text: "سفارش ها",
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                  )),
              Tab(
                  text: "تخفیف ها",
                  icon: Icon(
                    Icons.discount_outlined,
                  )),
              Tab(
                  text: "اسنپ کلاب",
                  icon: Icon(
                    Icons.diamond_outlined,
                  )),
              Tab(
                  text: "خانه",
                  icon: Icon(
                    Icons.home,
                  )),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0.4,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.person_outline,
                size: 25,
                color: Colors.black,
              ),
              const SizedBox(
                width: 18,
              ),
              const Icon(
                Icons.credit_card_outlined,
                size: 24,
                color: Colors.black,
              ),
              const SizedBox(
                width: 18,
              ),
              const Icon(
                Icons.mail_outline,
                size: 24,
                color: Colors.black,
              ),
              const SizedBox(
                width: 18,
              ),
              const Expanded(child: SizedBox.shrink()),
              Image.asset(
                Assets.images.logo.path,
                width: 74,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Tab(
                text: "سفارش ها",
                icon: Icon(
                  Icons.shopping_cart_outlined,
                )),
            const Tab(
                text: "تخفیف ها",
                icon: Icon(
                  Icons.discount_outlined,
                )),
            const Tab(
                text: "اسنپ کلاب",
                icon: Icon(
                  Icons.diamond_outlined,
                )),
            homePage()
          ],
        ),
      ),
    ));
  }

  Widget homePage() {
    return Stack(
      children: [
        SingleChildScrollView(
          //TODO:physics: const BouncingScrollPhysics(),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                //width: double.infinity,
                height: 73,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(Assets.images.bannerHaraj.path),
                        fit: BoxFit.fill)),
              ),
            ),
            SizedBox(
              height: 255,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: gideViewItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return gideViewItems[index];
                  },
                ),
              ),
            ),
            Column(children: [
              CarouselSlider(
                items: imageSliders,
                carouselController: _controller,
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
            ]),
            SizedBox(height: 40,),
          ]),
        ),
        const BottomNavBar(),
      ],
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
                  SvgPicture.asset(Assets.icons.bike),
                  const SizedBox(
                    height: 2.7,
                  ),
                  Text(
                    "اسنپ باکس",
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
                  SvgPicture.asset(Assets.icons.food),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.taxi),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "اسنپ",
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
        Assets.icons.shop,
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
        Assets.icons.credit,
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
        Assets.icons.moving,
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
        Assets.icons.hotel,
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
        Assets.icons.pharmacy,
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
        Assets.icons.doctor,
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
        Assets.icons.driver,
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
        Assets.icons.investment,
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
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(item, fit: BoxFit.cover, width: 400.0),

                ],
              )),
        ))
    .toList();
