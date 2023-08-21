// import 'package:flutter/material.dart';
// import 'package:lecture4/screens/bottomNavigationBar.dart';
// import 'package:lecture4/screens/card.dart';
// import 'package:lecture4/screens/chips.dart';
// import 'package:lecture4/screens/gridview.dart';
// import 'package:lecture4/screens/home.dart';
// import 'package:lecture4/screens/DrawerAndList.dart';
// import 'package:lecture4/screens/ExpansiontILE.dart';
// import 'package:lecture4/screens/listview.dart';
// import 'package:lecture4/screens/radiobuttons.dart';
// import 'package:lecture4/screens/tabbar.dart';
// import 'package:lecture4/screens/splashSreeen.dart';
// import 'package:lecture4/screens/stack.dart';
// import 'package:lecture4/screens/textFiled.dart';
// import 'prefernces/shared_prefernce_controller.dart';
// import 'screens/alertDialog.dart';
// import 'screens/bottomsheet.dart';
// import 'screens/calendar.dart';
// import 'screens/checkbox.dart';
// import 'screens/columns.dart';
// import 'screens/dropdownbutton.dart';
// import 'screens/elevatebbutton.dart';
// import 'screens/focusNode.dart';
// import 'screens/iconandimages.dart';
// import 'screens/image.dart';
// import 'screens/loginPage.dart';
// import 'screens/onBoarding2.dart';
// import 'screens/on_boarding_indicator.dart';
// import 'screens/onboarding.dart';
// import 'screens/paddingandmargin.dart';
// import 'screens/progressindicator.dart';
// import 'screens/rowAndColumnandTextFiled.dart';
// import 'screens/switchToggele.dart';
// import 'screens/textfiledstatefull.dart';
// import 'widgets/containerCv.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await SharedPrefController().initPref();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: OnBoardingScreen2(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:lecture4/screens/columnssss.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cloumnsss(),
    );
  }
}
