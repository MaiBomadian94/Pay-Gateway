import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:payment_integration/core/widgets/custom_button.dart';
import 'package:payment_integration/features/payment/presentation/views/thank_you_view.dart';
import 'package:payment_integration/features/payment/presentation/widgets/payment_method_list_view.dart';
import 'custom_credit_card.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: PaymentMethodsListView(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 34,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomCreditCard(
              formKey: formKey,
              autoValidateMode: autoValidateMode,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                buttonTitle: 'Pay',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log('Payment');
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ThankYouView(),
                      ),
                    );
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          )
        ],
      ),
    );
  }
}
