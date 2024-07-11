import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:u_credit_card/u_credit_card.dart';

final List<Widget> creditCarts = [
       CreditCardUi(
        cardHolderFullName: 'Shahin Abdolmaleki',
        cardNumber: dotenv.env['cart1']!,
        validThru: '10/25',
        cardProviderLogo: const Image(image: AssetImage('assets/images/spark.png')),
        cardProviderLogoPosition: CardProviderLogoPosition.left,
      ),
       CreditCardUi(
        cardHolderFullName: 'John Doe',
        cardNumber: dotenv.env['cart2']!,
        validThru: '10/25',
        topLeftColor: Colors.red,
        bottomRightColor: Colors.purpleAccent,
        cardProviderLogo:const Image(image: AssetImage('assets/images/spark.png')),
        cardProviderLogoPosition: CardProviderLogoPosition.left,
      ),
       CreditCardUi(
        cardHolderFullName: 'Shahin Abdolmaleki',
        cardNumber: dotenv.env['cart3']!,
        validThru: '10/25',
        topLeftColor: Colors.amber,
        bottomRightColor: Colors.purpleAccent,
        cardProviderLogo:const Image(image: AssetImage('assets/images/spark.png')),
        cardProviderLogoPosition: CardProviderLogoPosition.left,
      ),
    ];