import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/styles.dart';

class ContainerCardInfo extends StatelessWidget {
  const ContainerCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/credit_logo.svg'),
          const SizedBox(width: 23,),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'Credit Card ',
                  style: Styles.textStyle18,
                ),
                TextSpan(
                  text: 'Mastercard **78',
                  style: Styles.textStyle18.copyWith(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.699999988079)),
                ),],
            ),
          )
        ],
      ),
    );
  }
}
