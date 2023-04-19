import 'package:fastor_app/tutorial/page/TutorialCreateFastorPage.dart';
import 'package:fastor_app/tutorial/textview/TutorialTextviewPage.dart';
import 'package:fastor_app_ui_widget/resource/template/column/ColumnTemplate.dart';
import 'package:fastor_app_ui_widget/resource/template/page/PageTemplate.dart';
import 'package:fastor_app_ui_widget/resource/template/text/TextTemplate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return   MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fastor App Tutorial',
        theme: ThemeData(

          primarySwatch: Colors.grey,
        ),
        home:  nextPage(),
    );
  }


  Widget nextPage() {
     return TutorialCreateFastorPage();
    // return TutorialTextviewPage();
  }


}
