import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/styles.dart';

AppBar buildAppBar({required String title,  void Function()? onTap}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    elevation: 0,
    leading: GestureDetector(
      onTap: onTap,
      child: Center(
        child: SvgPicture.asset(
          'assets/images/Arrow 1.svg',
        ),
      ),
    ),
    title: Text(
      title,
      style: Styles.textStyle25,
      textAlign: TextAlign.center,
    ),
  );
}
