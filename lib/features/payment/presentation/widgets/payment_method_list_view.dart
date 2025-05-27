import 'package:flutter/material.dart';
import 'custom_payment_method.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodsImages = const [
    'assets/images/credit.svg',
    'assets/images/paypal.svg'
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodsImages.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {
              activeIndex = index;
              setState(
                () {},
              );
            },
            child: PaymentMethodItem(
              imageURL: paymentMethodsImages[index],
              isActive: activeIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
