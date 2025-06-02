import 'package:flutter/cupertino.dart';

class PositionedDashLine extends StatelessWidget {
  const PositionedDashLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * .2 + 20,
      left: 12 + 20,
      right: 12 + 20,
      child: Row(
        children: List.generate(
          20,
              (index) => Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: const Color(0xffB8B8B8),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
