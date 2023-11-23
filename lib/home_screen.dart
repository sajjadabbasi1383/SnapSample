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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      initialIndex: 3,
      length: 4,
      animationDuration: const Duration(milliseconds: 300),
      child: Scaffold(
        backgroundColor: Colors.grey,
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
          elevation: 0,
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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: Colors.white),
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

Widget homePage() {
  return Stack(
    children: [
      SingleChildScrollView(
        //TODO:physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              //width: double.infinity,
              height: 72,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(Assets.images.bannerHaraj.path),
                      fit: BoxFit.fill)),
            ),
          ),
        ]),
      ),
      const BottomNavBar(),
    ],
  );
}
