import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/model/onBoardingItemList.dart';
import 'package:lecture4/screens/on_boarding_indicator.dart';
import 'package:lecture4/widgets/on_boarding_content.dart';


class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  int _currentPageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _currentPageIndex == 2,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login_screen');
                    },
                    child: Text(
                      'START',
                      style: GoogleFonts.poppins(fontSize: 16),
                    )),
                replacement: TextButton(
                    onPressed: () {
                      _pageController.animateToPage(2,
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInCubic);
                    },
                    child: Text(
                      'SKIP',
                      style: GoogleFonts.poppins(fontSize: 16),
                    )),
              ),
            ),
            Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (int pageIndex) {
                    setState(() {
                      _currentPageIndex = pageIndex;
                    });
                  },
                  itemCount: onboardingItems2.length,
                  itemBuilder: (context, index) {
                    return OnBoardingContent(
                      onboardingItem2: onboardingItems2[index],);
                  },
                )
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnBoardingIndicator(
                  isSelected: _currentPageIndex == 0,
                  marginEnd: 14,
                ),
                OnBoardingIndicator(
                  isSelected: _currentPageIndex == 1,
                  marginEnd: 14,
                ),
                OnBoardingIndicator(isSelected: _currentPageIndex == 2),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Visibility(
                  visible: _currentPageIndex != 0,
                  maintainState: true,
                  maintainAnimation: true,
                  maintainSize: true,
                  child: IconButton(
                    onPressed: () {
                      if (_currentPageIndex != 0)
                        _pageController.previousPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOutBack);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: _currentPageIndex == 0 ? Colors.grey : Colors.black,
                  ),
                ),
                Visibility(
                  visible: _currentPageIndex != 2,
                  maintainState: true,
                  maintainAnimation: true,
                  maintainSize: true,
                  child: IconButton(
                    onPressed: () {
                      if (_currentPageIndex != 2)
                        _pageController.nextPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOutBack);
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                    color: _currentPageIndex == 2 ? Colors.grey : Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Visibility(
              maintainState: true,
              maintainAnimation: true,
              maintainSize: true,
              visible: _currentPageIndex == 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff6A90F2),
                      minimumSize: Size(double.infinity, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.5)
                      )
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                  child: Text(
                    'START',
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ),
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     TabPageSelectorIndicator(
            //       backgroundColor:
            //           _currentPageIndex == 0 ? Colors.blue : Colors.grey.shade200,
            //       borderColor: Colors.red,
            //       size: 10,
            //     ),
            //     TabPageSelectorIndicator(
            //       backgroundColor:
            //           _currentPageIndex == 1 ? Colors.blue : Colors.grey.shade200,
            //       borderColor: Colors.red,
            //       size: 10,
            //     ),
            //     TabPageSelectorIndicator(
            //       backgroundColor:
            //           _currentPageIndex == 2 ? Colors.blue : Colors.grey.shade200,
            //       borderColor: Colors.red,
            //       size: 10,
            //     ),
            //   ],
            // ),
            ,
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
