import 'package:flutter/cupertino.dart';
import 'package:payment_integration/features/payment/presentation/widgets/payment_method_list_view.dart';
import '../../../../core/widgets/custom_button.dart';

class CustomPaymentMethodBottomSheet extends StatelessWidget {
  const CustomPaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          const PaymentMethodsListView(),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            buttonTitle: 'Continue',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
