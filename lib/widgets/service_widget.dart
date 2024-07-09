
import 'package:fintech/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget serviceWidgets(
    {required Icon icon,
    required Color iconColor,
    required String serviceText,
    required Color backGroundColor}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
              color: backGroundColor, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            icon.icon,
            color: iconColor,
            size: 35,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          serviceText,
          style: const TextStyle(color: grey),
        )
      ],
    ),
  );
}
