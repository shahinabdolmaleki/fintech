import 'package:fintech/constants/color.dart';
import 'package:fintech/widgets/service_widget.dart';
import 'package:flutter/material.dart';

final List<Widget> serviceListWidget = [
  serviceWidgets(
                    icon: const Icon(Icons.payments),
                    iconColor: selectColor,
                    serviceText: 'Recharge',
                    backGroundColor: lowGrey),
                serviceWidgets(
                    icon: const Icon(Icons.real_estate_agent),
                    iconColor: selectColor,
                    serviceText: 'Charity',
                    backGroundColor: lowGrey),
                serviceWidgets(
                    icon: const Icon(Icons.credit_score),
                    iconColor: selectColor,
                    serviceText: 'Loan',
                    backGroundColor: lowGrey),
                serviceWidgets(
                    icon: const Icon(Icons.redeem),
                    iconColor: white,
                    serviceText: 'Gifts',
                    backGroundColor: selectColor),
                serviceWidgets(
                    icon: const Icon(Icons.account_balance_wallet),
                    iconColor: selectColor,
                    serviceText: 'Insurance',
                    backGroundColor: lowGrey),
];
