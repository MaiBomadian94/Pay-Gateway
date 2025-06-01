import 'package:flutter/cupertino.dart';
import '../../../../core/utils/styles.dart';

class CustomOrderInfo extends StatelessWidget {
  const CustomOrderInfo({super.key, required this.title, required this.value});

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.textStyle18,
        ),
        Text(
          value,
          style: Styles.textStyle18,
        ),
      ],
    );
  }
}
