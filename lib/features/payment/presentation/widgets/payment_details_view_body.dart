import 'package:flutter/material.dart';
import 'package:payment_integration/features/payment/presentation/widgets/payment_method_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Column(
        children: [
          PaymentMethodsListView(),
        ],
      ),
    );
  }
}
