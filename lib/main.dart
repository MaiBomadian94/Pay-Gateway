import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_integration/features/payment/presentation/views/my_cart_view.dart';

void main() {
  Stripe.publishableKey = 'pk_test_51RYnQrPwKNNm3SqLfFuwhLrqy3PbBzGFk3fk2tbHdEWga1uA8kpY29OZ0I1d1fqKuL130tXercTYdlGmId1npPGB00b143pwdu';

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

// PaymentIntentObject create payment intent (amount , currency)
// init payment sheet (paymentIntentClientSecret)
// presentPaymentSheet()
