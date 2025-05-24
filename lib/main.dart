import 'package:flutter/material.dart';
import 'package:payment_integration/features/payment/presentation/views/my_cart_view.dart';

void main() {
  runApp(const PayGateway());
}

class PayGateway extends StatelessWidget {
  const PayGateway({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
