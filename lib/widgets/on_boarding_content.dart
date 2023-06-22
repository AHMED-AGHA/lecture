import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/model/onBoardingItem.dart';

class OnBoardingContent extends StatelessWidget {
  OnBoardingContent({Key? key, required this.onboardingItem2});

  OnboardingItem2 onboardingItem2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Column(
            children: [
              Text(
                onboardingItem2.title,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xff1B2A3B)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                onboardingItem2.description,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: const Color(0xff1B2A3B).withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        Image.asset(
          'assets/images/${onboardingItem2.image}.png',
          height: 289,
        )
      ],
    );
  }
}
