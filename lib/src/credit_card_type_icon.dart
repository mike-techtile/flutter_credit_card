import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_credit_card/src/utils/helpers.dart';

class CreditCardTypeIcon extends StatelessWidget {
  const CreditCardTypeIcon(
      {super.key,
      this.cardType,
      required this.cardNumber,
      this.customCardTypeIcons = const <CustomCardTypeIcon>[]});

  final String cardNumber;
  final CardType? cardType;
  final List<CustomCardTypeIcon> customCardTypeIcons;

  @override
  Widget build(BuildContext context) {
    final CardType ccType = cardType ?? detectCCType(cardNumber);
    return getCardTypeImage(
      cardType: ccType,
      customIcons: customCardTypeIcons,
    );
  }
}
