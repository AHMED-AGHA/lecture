import 'package:flutter/material.dart';
import 'package:lecture4/model/onBoardingItem.dart';
import 'package:page_view_indicators/page_view_indicators.dart';
import '../model/onBoardingItemList.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  late ValueNotifier<int> _currentPageNotifier;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _currentPageNotifier = ValueNotifier<int>(0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _currentPageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            physics: const BouncingScrollPhysics(),
            controller: _pageController,
            itemCount: onboardingItems.length,
            itemBuilder: (context, index) {
              return _buildOnboardingItem(onboardingItems[index]);
            },
            onPageChanged: (int index) {
              _currentPageNotifier.value = index;
            },
          ),
          Positioned(
            left: 16.0,
            right: 16.0,
            bottom: 16.0,
            child: _buildPageViewIndicator(),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingItem(OnboardingItem item) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            item.icon,
            size: 150.0,
            color: Colors.blue,
          ),
          const SizedBox(height: 32.0),
          Text(
            item.title,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            item.description,
            style: const TextStyle(
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPageViewIndicator() {
    return CirclePageIndicator(
      size: 8.0,
      selectedSize: 12.0,
      dotColor: Colors.grey,
      selectedDotColor: const Color(0xffF24C3D),
      dotSpacing: 12.0,
      itemCount: onboardingItems.length,
      currentPageNotifier: _currentPageNotifier,
    );
  }
}
