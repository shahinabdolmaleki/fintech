import 'package:fintech/data/cart_list_widget.dart';
import 'package:fintech/constants/color.dart';
import 'package:fintech/data/cart_status_list.dart';
import 'package:fintech/widgets/appbar_widget.dart';
import 'package:fintech/widgets/setting_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.9, keepPage: true);
    int index = 3;
    bool giveVerse = true;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          appBarWidgetWithIcon(
            title: 'My Card',
            icon: const Icon(Icons.notifications_active_outlined),
          ),
          SizedBox(
            height: 220,
            child: PageView.builder(
                controller: controller,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: creditCarts.elementAt(index),
                  );
                },
                itemCount: index),
          ),
          const SizedBox(
            height: 7,
          ),
          SmoothPageIndicator(
            controller: controller,
            count: index,
            effect: const ExpandingDotsEffect(
              activeDotColor: selectColor,
              dotColor: grey,
              dotHeight: 8,
              dotWidth: 8,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 0; i < 2; i++) cartStatusList.elementAt(i)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25.0, top: 8),
            child: Row(
              children: [
                Text(
                  'Settings',
                  style: TextStyle(
                      fontSize: 25, fontFamily: 'Robotom', color: black),
                ),
              ],
            ),
          ),
          settingWidgetWithIcon(
              icon: const Icon(
                Icons.admin_panel_settings,
              ),
              textsetting: 'Change Pin'),
          settingWidgetWithToggle(
            onChange: () {
              setState(() {
                giveVerse = !giveVerse;
              });
            },
            icon: const Icon(
              Icons.lock,
            ),
            textsetting: 'Lock Card',
          ),
          settingWidgetWithToggle(
            onChange: () {
              setState(() {
                giveVerse = !giveVerse;
              });
            },
            icon: const Icon(
              Icons.hide_source,
            ),
            textsetting: 'Deactivate Card',
          ),
        ],
      ),
    );
  }
}
