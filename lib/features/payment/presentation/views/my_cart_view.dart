import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_integration/core/utlis/styles.dart';

import '../widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: Center(
          child: SvgPicture.asset(
            'assets/images/Arrow 1.svg',
          ),
        ),
        title: const Text(
          'My Cart',
          style: Styles.textStyle25,
          textAlign: TextAlign.center,
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}
