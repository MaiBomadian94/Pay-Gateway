import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/utlis/styles.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image.asset('assets/images/Group 6.png'),
          const SizedBox(
            height: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order Subtotal',
                style: Styles.textStyle18,
              ),
              Text(
                r'$42.97',
                style: Styles.textStyle18,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount',
                  style: Styles.textStyle18,
                ),
                Text(
                  r'$$0',
                  style: Styles.textStyle18,
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shipping',
                style: Styles.textStyle18,
              ),
              Text(
                r'$8',
                style: Styles.textStyle18,
              ),
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          Container(
            width: 320,
            height: 2,
            color: const Color(0xffC7C7C7),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: Styles.textStyle24,
              ),
              Text(
                r'$50.97',
                style: Styles.textStyle24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
