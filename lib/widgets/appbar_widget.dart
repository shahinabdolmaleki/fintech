import 'package:fintech/constants/color.dart';
import 'package:flutter/material.dart';

Widget appBarWidgetWithPhoto(
    {required String image, required String title, required Icon icon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          minRadius: 25,
          backgroundImage: AssetImage('assets/images/$image'),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 29, fontFamily: 'Robotom'),
        ),
        Container(
          width: 47,
          height: 47,
          decoration: BoxDecoration(
              color: lowGrey, borderRadius: BorderRadius.circular(30)),
          child: Icon(
            icon.icon,
            color: grey,
            size: 30,
          ),
        ),
      ],
    ),
  );
}

Widget appBarWidgetWithIcon({required String title, required Icon icon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 47,
          height: 47,
          decoration: BoxDecoration(
              color: lowGrey, borderRadius: BorderRadius.circular(30)),
          child: const Icon(
            Icons.arrow_back_ios,
            color: grey,
            size: 30,
          ),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 29, fontFamily: 'Robotom'),
        ),
        Container(
          width: 47,
          height: 47,
          decoration: BoxDecoration(
              color: lowGrey, borderRadius: BorderRadius.circular(30)),
          child: Icon(
            icon.icon,
            color: grey,
            size: 30,
          ),
        ),
      ],
    ),
  );
}
