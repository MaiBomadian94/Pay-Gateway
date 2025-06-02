import 'package:flutter/material.dart';
import 'package:payment_integration/features/payment/presentation/widgets/payment_item_info.dart';
import 'package:payment_integration/features/payment/presentation/widgets/total_price_widget.dart';
import '../../../../core/utils/styles.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xffD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, left: 22, right: 22) ,
        child: Column(
          children: [
            const Text(
              'Thank you!',
              style: Styles.textStyle25,
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Your transaction was successful',
              style: Styles.textStyle20,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentItemInfo(
              title: 'Date',
              value: '01/24/2023',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: PaymentItemInfo(
                title: 'Time',
                value: '10:15 AM',
              ),
            ),
            const PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              height: 34,
              thickness: 2,
              color: Color(0xffC7C7C7),
            ),
            const SizedBox(
              height: 24,
            ),
            const TotalPrice(
              title: 'Total',
              value: r'$50.97',
            ),
          ],
        ),
      ),
    );
  }
}
