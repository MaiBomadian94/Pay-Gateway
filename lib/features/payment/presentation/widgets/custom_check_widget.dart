import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCheckWidget extends StatelessWidget {
  const CustomCheckWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
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
    );
  }
}
