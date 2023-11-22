import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          BottomNavBar()
        ],
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
      bottom: 15,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.only(
            right: 10, left: 10),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              gradient:
              const LinearGradient(colors:  [
                Color.fromARGB(255, 0, 190, 0),
                Color.fromARGB(255, 0, 130, 0)
              ])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.local_taxi,color: Colors.white,)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.fastfood_outlined,color: Colors.white,)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.storefront_outlined,color: Colors.white,)),
            ],
          ),
        ),
      ),
    );
  }
}
