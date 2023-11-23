import 'package:flutter/material.dart';
import 'package:snap_map/constant/my_text_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: DefaultTabController(
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
            Tab(text: "سفارش ها",icon: Icon(Icons.shopping_cart_outlined,)),
            Tab(text: "تخفیف ها",icon: Icon(Icons.discount_outlined,)),
            Tab(text: "اسنپ کلاب",icon: Icon(Icons.diamond_outlined,)),
            Tab(text: "خانه",icon: Icon(Icons.home,)),
          ],
        ),
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              const SizedBox(width: 5,),
              const Icon(Icons.person_outline,size: 25,color: Colors.black,),
              const SizedBox(width: 18,),
              const Icon(Icons.credit_card_outlined,size: 24,color: Colors.black,),
              const SizedBox(width: 18,),
              const Icon(Icons.mail_outline,size: 24,color: Colors.black,),
              const SizedBox(width: 18,),
              const Expanded(child: SizedBox.shrink()),
              Image.asset("assets/images/logo.png",width: 74,),

            ],
          ),
      ),
      body:   TabBarView(
        children: [
          const Tab(text: "سفارش ها",icon: Icon(Icons.shopping_cart_outlined,)),
          const Tab(text: "تخفیف ها",icon: Icon(Icons.discount_outlined,)),
          const Tab(text: "اسنپ کلاب",icon: Icon(Icons.diamond_outlined,)),
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
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 2, 207, 36),
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.motorcycle_sharp,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "اسنپ باکس",
                    style: MyTextStyle.textStyle2,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "سوپرمارکت",
                    style: MyTextStyle.textStyle2,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.local_dining,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "غذا",
                    style: MyTextStyle.textStyle2,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 2, 207, 36),
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.local_taxi,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "اسنپ",
                    style: MyTextStyle.textStyle2,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget homePage(){
  return const Stack(
    children: [
      BottomNavBar(),
    ],
  );
}
