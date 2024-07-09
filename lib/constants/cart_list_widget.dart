import 'package:flutter/material.dart';
import 'package:u_credit_card/u_credit_card.dart';

final List<Widget> creditCarts = [
      const CreditCardUi(
        cardHolderFullName: 'Shahin Abdolmaleki',
        cardNumber: '1234567812345678',
        validThru: '10/25',
        cardProviderLogo: Image(image: AssetImage('assets/images/spark.png')),
        cardProviderLogoPosition: CardProviderLogoPosition.left,
      ),
      const CreditCardUi(
        cardHolderFullName: 'John Doe',
        cardNumber: '1234567812345678',
        validThru: '10/25',
        topLeftColor: Colors.red,
        bottomRightColor: Colors.purpleAccent,
        cardProviderLogo: Image(image: AssetImage('assets/images/spark.png')),
        cardProviderLogoPosition: CardProviderLogoPosition.left,
      ),
      const CreditCardUi(
        cardHolderFullName: 'Shahin Abdolmaleki',
        cardNumber: '1234567812345678',
        validThru: '10/25',
        topLeftColor: Colors.amber,
        bottomRightColor: Colors.purpleAccent,
        cardProviderLogo: Image(image: AssetImage('assets/images/spark.png')),
        cardProviderLogoPosition: CardProviderLogoPosition.left,
      ),
    ];