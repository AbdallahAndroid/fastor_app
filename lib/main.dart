import 'package:fastor_app/tutorial/button/TutorialButtonScreen.dart';
import 'package:fastor_app/tutorial/checkbox/TutorialCheckboxScreen.dart';
import 'package:fastor_app/tutorial/image/TutorialImageFastorScreen.dart';
import 'package:fastor_app/tutorial/page/TutorialPageFastorScreen.dart';
import 'package:fastor_app/tutorial/radio/TutorialRadiogroupScreen.dart';
import 'package:fastor_app/tutorial/row/TutorialRowFastorScreen.dart';
import 'package:fastor_app/tutorial/textfield/TutorialTextfieldPage.dart';
import 'package:fastor_app/tutorial/textview/TutorialTextviewPage.dart';
import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:fastor_app_ui_widget/resource/template/column/ColumnTemplate.dart';
import 'package:fastor_app_ui_widget/resource/template/page/PageTemplate.dart';
import 'package:fastor_app_ui_widget/resource/template/text/TextTemplate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'resource/fastor/ds/DesignSystemFastor.dart';
import 'tutorial/column/TutorialColumnFastorScreen.dart';
import 'tutorial/decoration/TutorialDecorationPage.dart';
import 'tutorial/network/TutorialNetworkManager.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Fastor.initializeApp( );
  DesignSystemFastor.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Fastor App Tutorial',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      //   useMaterial3: true,
      // ),
      home: nextPage(),
    );
  }



  Widget nextPage() {
    // return TutorialPageFastorScreen();
    // return TutorialTextviewPage();
    // return TutorialButtonScreen();
    // return TutorialImageFastorScreen();
    // return TutorialRowFastorScreen();
    // return TutorialColumnFastorScreen();
    // return TutorialTextfieldPage();
    // return TutorialCheckboxScreen();
    // return TutorialRadiogroupScreen();
    // return TutorialNetworkManager();
    return TutorialDecorationPage();
  }



}
