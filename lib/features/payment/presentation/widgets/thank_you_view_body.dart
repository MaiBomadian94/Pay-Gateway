import 'package:flutter/material.dart';
import 'package:payment_integration/features/payment/presentation/widgets/positioned_dash_row.dart';
import 'package:payment_integration/features/payment/presentation/widgets/thank_you_card.dart';
import 'package:payment_integration/features/payment/presentation/widgets/total_price_widget.dart';
import '../../../../core/utils/styles.dart';
import 'custom_cart_order_info.dart';
import 'custom_check_widget.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .2,
            left: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .2,
            right: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            top: -50,
            right: 0,
            left: 0,
            child: CustomCheckWidget(),
          ),
          Positioned(
            top: 66,
            right: 0,
            left: 0,
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    children: [
                      CustomOrderInfo(
                        title: 'Date',
                        value: '01/24/2023',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: CustomOrderInfo(
                          title: 'Time',
                          value: '10:15 AM',
                        ),
                      ),
                      CustomOrderInfo(
                        title: 'To',
                        value: 'Sam Louis',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        height: 34,
                        thickness: 2,
                        color: Color(0xffC7C7C7),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TotalPrice(title: 'Total', value: r'$50.97')
                    ],
                  ),
                ),
              ],
            ),
          ),
          const PositionedDashLine(),
        ],
      ),
    );
  }
}
