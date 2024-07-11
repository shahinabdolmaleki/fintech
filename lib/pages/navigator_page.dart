import 'package:fintech/constants/color.dart';
import 'package:fintech/data/navigation_page_list.dart';
import 'package:fintech/data/model.dart';
import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int selectButton = 0;
  int pageSellection = 0;

  void changeIndex(int index) {
    setState(() {
      pageSellection = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: veryLowGrey,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: bodyContent.elementAt(pageSellection),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: navigationBar(),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer navigationBar() {
    return AnimatedContainer(
      height: 93.0,
      duration: const Duration(milliseconds: 400),
      decoration: const BoxDecoration(
        color: white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < navigationButton.length; i++)
            GestureDetector(
              onTap: () {
                setState(() => selectButton = i);
                setState(() => pageSellection = navigationButton[i].id);
              },
              child: iconButton(i),
            ),
        ],
      ),
    );
  }

  SizedBox iconButton(int i) {
    bool isActive = selectButton == i ? true : false;

    return SizedBox(
      width: 75.0,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              child: isActive
                  ? Container(
                      color: selectColor,
                      height: 2,
                      width: 35.0,
                    )
                  : const SizedBox(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              navigationButton[i].icon.icon,
              color: isActive ? selectColor : grey,
              size: 40.0,
            ),
          ),
        ],
      ),
    );
  }
}
