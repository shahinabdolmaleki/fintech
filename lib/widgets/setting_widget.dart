import 'package:fintech/constants/color.dart';
import 'package:flutter/material.dart';

Widget settingWidgetWithIcon({
  required Icon icon,
  required String textsetting,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
    child: Container(
      height: 80,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        color: redStatus,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Icon(
                      size: 20,
                      icon.icon,
                      color: white,
                    )),
                const SizedBox(
                  width: 15,
                ),
                Text(textsetting,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'Robotom', color: black))
              ],
            ),
            Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: const Icon(
                  size: 20,
                  Icons.arrow_forward_ios,
                  color: white,
                )),
          ],
        ),
      ),
    ),
  );
}

Widget settingWidgetWithToggle({
  required Icon icon,
  required String textsetting,
  required onChange,
}) {
  bool giveVerse = false;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
    child: Container(
      height: 80,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        color: redStatus,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Icon(
                      size: 20,
                      icon.icon,
                      color: white,
                    )),
                const SizedBox(
                  width: 15,
                ),
                Text(textsetting,
                    style: const TextStyle(
                        fontSize: 20, fontFamily: 'Robotom', color: black))
              ],
            ),
            Switch(
              value: false,
              onChanged: (bool newValue) {
                onChange;
              },
            )
          ],
        ),
      ),
    ),
  );
}
