import 'package:flutter/material.dart';
import 'package:payment_integration/features/payment/presentation/widgets/total_price_widget.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_cart_order_info.dart';
import 'custom_payment_method_bottom_sheet.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Expanded(child: Image.asset('assets/images/Group 6.png')),
          const SizedBox(
            height: 25,
          ),
          const CustomOrderInfo(
            title: 'Order Subtotal',
            value: r'$42.97',
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: CustomOrderInfo(
              title: 'Discount',
              value: r'$0',
            ),
          ),
          const CustomOrderInfo(
            title: 'Shipping',
            value: r'$8',
          ),
          const Divider(
            height: 34,
            thickness: 2,
            color: Color(0xffC7C7C7),
          ),
          const TotalPrice(
            title: 'Total',
            value: r'$50.97',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const CustomPaymentMethodBottomSheet(),
              );
            },
            buttonTitle: 'Complete Payment',
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
