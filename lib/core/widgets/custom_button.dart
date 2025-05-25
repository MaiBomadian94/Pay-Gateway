import 'package:flutter/cupertino.dart';
import '../utlis/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.buttonTitle, required this.onTap});

  final String buttonTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 73,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff34A853),
        ),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            buttonTitle,
            style: Styles.textStyle22,
          ),
        ),
      ),
    );
  }
}
