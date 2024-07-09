import 'package:fintech/constants/color.dart';
import 'package:flutter/material.dart';

Widget actionWidgets(
    {required Color backGraoundColor,
    required Icon icon,
    required Color iconColor,
    required String textActionWidget,}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 141,
      width: 141,
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: backGraoundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon.icon,
                size: 25,
                color: iconColor,
              ),
            ),
            Text(textActionWidget)
          ],
        ),
      ),
    ),
  );
}


