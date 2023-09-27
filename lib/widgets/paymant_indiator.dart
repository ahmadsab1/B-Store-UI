import 'package:flutter/material.dart';

class PaymentIndiator extends StatelessWidget {
  const PaymentIndiator({
    super.key,
    required bool isSelected,
  }) : _isSelected = isSelected;

  final bool _isSelected;

  @override
  Widget build(BuildContext context) {
    return TabPageSelectorIndicator(
      backgroundColor:
          _isSelected ? const Color(0xff586BCA) : const Color(0xffD7D7D7),
      borderColor: Colors.transparent,
      size: _isSelected ? 15 : 10,
    );
  }
}
