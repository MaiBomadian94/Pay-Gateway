import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ThankYouViewBody(),
    );
  }
}

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              color: const Color(0xffD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .2,
            left: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .2,
            right: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
           Positioned(
            top: -20,
            right: 0,
            left: 0,
            child: CircleAvatar(

              backgroundColor: const Color(0xffD9D9D9),
              child: CircleAvatar(
                backgroundColor: const Color(0xff34A853),
                child:SvgPicture.asset('assets/images/check.svg',fit: BoxFit.scaleDown,) ,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
