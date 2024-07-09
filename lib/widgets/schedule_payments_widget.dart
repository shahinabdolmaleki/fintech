import 'package:fintech/constants/color.dart';
import 'package:flutter/material.dart';

Widget schedulePayments(
    {required String price,
    required String datum,
    required String paymentName,
    required String imagePeyment}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7),
    child: Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/$imagePeyment'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      paymentName,
                      style: const TextStyle(
                          fontFamily: 'Roboto', fontSize: 15, color: black),
                    ),
                    Row(
                      children: [
                        const Text(
                          'next payment:',
                          style: TextStyle(
                              fontFamily: 'Roboto', fontSize: 15, color: grey),
                        ),
                        Text(
                          datum,
                          style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              color: selectColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '\$$price',
                  style: const TextStyle(
                      fontFamily: 'Roboto', fontSize: 23, color: black),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Text(
                  'usd',
                  style: TextStyle(
                      fontFamily: 'Roboto', fontSize: 18, color: black),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
