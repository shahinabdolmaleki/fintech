import 'package:fintech/widgets/schedule_payments_widget.dart';
import 'package:flutter/material.dart';

final List<Widget> peymentListWidget = [
  schedulePayments(
      price: '10.0',
      datum: '12/24',
      paymentName: 'Netflix',
      imagePeyment: 'netflix 1.png'),
  schedulePayments(
      price: '3.50',
      datum: '14/24',
      paymentName: 'Paypal',
      imagePeyment: 'paypal 1.png'),
  schedulePayments(
      price: '10.50',
      datum: '16/24',
      paymentName: 'Spotify',
      imagePeyment: 'spotify 1.png'),
];
