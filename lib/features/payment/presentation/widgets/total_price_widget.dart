import 'package:flutter/cupertino.dart';
import '../../../../core/utlis/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styles.textStyle24,
        ),
        Text(
          value,
          style: Styles.textStyle24,
        ),
      ],
    );
  }
}
