import 'package:flutter/material.dart';
import 'package:wake/UI/Pages/home.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int initialIndex = 0;
  bool anyalarm = false;

  final page = [const Home()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[initialIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                initialIndex = 0;
              });
            },
            icon: initialIndex == 0
                ? const Icon(
                    Icons.alarm_on_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.alarm_on_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                initialIndex = 1;
              });
            },
            icon: initialIndex == 1
                ? const Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                initialIndex = 2;
              });
            },
            icon: initialIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
