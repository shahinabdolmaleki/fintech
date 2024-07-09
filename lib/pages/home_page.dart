import 'package:fintech/constants/action_list_widget.dart';
import 'package:fintech/constants/cart_list_widget.dart';
import 'package:fintech/constants/color.dart';
import 'package:fintech/constants/payment_list_widget.dart';
import 'package:fintech/constants/service_list_widget.dart';
import 'package:fintech/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 0.9, keepPage: true);
    int index = 3;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          appBarWidgetWithPhoto(
            image: 'Ellipse 307.png',
            title: 'Fintech',
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
          const Padding(
            padding: EdgeInsets.only(left: 30.0, top: 20.0, bottom: 10),
            child: Row(
              children: [
                Text(
                  'Quick Action',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 24),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 10),
              child: Row(
                children: [
                  for (var i = 0; i < 3; i++) actionlistWidget.elementAt(i)
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0, top: 15),
            child: Row(
              children: [
                Text('Services',
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 24))
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var i = 0; i < 5; i++) serviceListWidget.elementAt(i)
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Schedule Payments',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 24),
                ),
                InkWell(
                  child: Text('View All',
                      style: TextStyle(
                          fontFamily: 'Roboto', fontSize: 20, color: grey)),
                ),
              ],
            ),
          ),
          Column(children: [
            for (var i = 0; i < 3; i++) peymentListWidget.elementAt(i)
          ]),
          const SizedBox(
            height: 93,
          )
        ],
      ),
    );
  }
}
