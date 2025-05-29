import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_integration/core/utlis/styles.dart';
import 'package:payment_integration/features/payment/presentation/widgets/total_price_widget.dart';

import '../widgets/custom_cart_order_info.dart';
import '../widgets/positioned_dash_row.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ThankYouViewBody(),
    );
  }
}

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xffD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
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
          Positioned(
            top: -50,
            right: 0,
            left: 0,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: const Color(0xffD9D9D9),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xff34A853),
                child: SvgPicture.asset(
                  'assets/images/check.svg',
                  fit: BoxFit.scaleDown,
                  width: 50,
                  height: 28,
                ),
              ),
            ),
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
                      SizedBox(height: 30,),
                       Divider(
                        height: 34,
                        thickness: 2,
                        color: Color(0xffC7C7C7),
                      ),
                      SizedBox(height: 24,),
                      TotalPrice(title: 'Total', value: r'$50.97')

                    ],
                  ),
                ),
              ],
            ),
          ),
          const PositionedDashRow(),
        ],
      ),
    );
  }
}
