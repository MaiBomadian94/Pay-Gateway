import 'package:flutter/cupertino.dart';

import 'custom_payment_method.dart';

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});

  final List<String> paymentMethodsImages = const [
    'assets/images/credit.svg',
    'assets/images/paypal.svg'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodsImages.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: PaymentMethodItem(
            imageURL: paymentMethodsImages[index],
          ),
        ),
      ),
    );
  }
}
