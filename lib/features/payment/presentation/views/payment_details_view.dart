import 'package:flutter/material.dart';
import 'package:payment_integration/core/widgets/custom_app_bar.dart';
import '../widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
        title: 'Payment Details',
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: const PaymentDetailsViewBody(),
    );
  }
}

