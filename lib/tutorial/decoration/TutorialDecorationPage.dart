import 'package:fastor_app/resource/resourceProject/FontProject.dart';

import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:fastor_app_ui_widget/resource/template/page/PageFastor.dart';
import 'package:fastor_app_ui_widget/resource/template/text/TextFastor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TutorialDecorationPage extends StatefulWidget {
  @override
  _tutorialState createState() {
    return _tutorialState();
  }

}

class _tutorialState extends State<TutorialDecorationPage > {


  @override
  Widget build(BuildContext context) {
    return PageFastor( this,
        statusBarColorCustom: Colors.black,
        homeButtonsBackgroundColor: Colors.black,
        //toolbar
        toolbar:  ToolbarSimpleFastor( context, "Tutorial Decoration"),
        toolbar_height : 70,
        content: getContent() );
  }


  Widget getContent() {
    return ColumnFastor(
      margin: EdgeInsets.all( 30),
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        shape1()

    ],);
  }

  Widget shape1(){
    return Container(
      child: TextFastor("Boarder Radius All by 10"),
      decoration: BoarderHelper.bottom_line(
        radiusSize: 10,
        colorBackground: Colors.blue,
        colorLine: Colors.black
      ),
    );
  }


}