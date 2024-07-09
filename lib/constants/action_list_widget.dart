import 'package:fintech/constants/color.dart';
import 'package:fintech/widgets/action_widget.dart';
import 'package:flutter/material.dart';

final List<Widget> actionlistWidget = [
  actionWidgets(
                    backGraoundColor: Colors.greenAccent.shade100,
                    iconColor: Colors.green,
                    icon: const Icon(Icons.currency_exchange),
                    textActionWidget: 'Money Transfer'),
                actionWidgets(
                    backGraoundColor: const Color.fromARGB(255, 98, 151, 243),
                    iconColor: const Color.fromARGB(255, 43, 86, 215),
                    icon: const Icon(Icons.receipt_long),
                    textActionWidget: 'Pay Bill'),
                actionWidgets(
                    backGraoundColor: veryLowGrey,
                    iconColor: grey,
                    icon: const Icon(Icons.account_balance),
                    textActionWidget: 'Bank to Bank'),
];
