import 'package:fintech/constants/color.dart';
import 'package:fintech/widgets/cart_status.dart';
import 'package:flutter/material.dart';

final List<Widget> cartStatusList = [
  cartStatusWidget(
      backgraoundColor: greenStatus.withOpacity(0.3),
      statusText: 'Credit Limit',
      statusSituation: '\$271.00',
      dollor: 'usd',
      textColor: greenStatus),
  cartStatusWidget(
      backgraoundColor: redStatus.withOpacity(0.3),
      statusText: 'Card Status',
      statusSituation: 'Active',
      dollor: '',
      textColor: redStatus),
];
