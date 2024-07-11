import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget cartStatusWidget(
    {required Color backgraoundColor,
    required String statusText,
    required String statusSituation,
    required Color textColor,
    required String dollor}) {
  return Container(
    width: 190,
    height: 95,
    decoration: BoxDecoration(
      color: backgraoundColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            statusText,
            style: TextStyle(
                fontSize: 18, fontFamily: 'Robotom', color: textColor),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                statusSituation,
                style: TextStyle(
                    fontSize: 20, fontFamily: 'Roboto', color: textColor),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                dollor,
                style: TextStyle(
                    fontSize: 15, fontFamily: 'Robotom', color: textColor),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
