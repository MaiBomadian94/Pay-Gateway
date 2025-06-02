import 'package:flutter/material.dart';
import 'package:payment_integration/features/payment/presentation/widgets/positioned_dash_row.dart';
import 'package:payment_integration/features/payment/presentation/widgets/thank_you_card.dart';
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
          const PositionedDashLine(),
        ],
      ),
    );
  }
}
