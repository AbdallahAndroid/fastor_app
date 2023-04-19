import 'package:fastor_app/genericUI/background/CustomWidgetBackground.dart';
import 'package:fastor_app/resource/ui/navigation/v/NavigationFastor.dart';
import 'package:fastor_app/resource/ui/toolbar/ToolbarSimpleFastor.dart';
import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

class TutorialCreateFastorPage extends StatefulWidget {

  @override
  TutorialCreateFastorState createState() => TutorialCreateFastorState();



}

class TutorialCreateFastorState extends State<TutorialCreateFastorPage> {


  @override
  Widget build(BuildContext context) {
    return PageFastor(this,

        //color
        statusBarColorCustom: HexColor(  "#fc0349"),
        homeButtonsBackgroundColor: HexColor(  "#03fcce"),

        //navigation bottom
        navigationBottom: NavigationFastor( context, 0),
        navigationBottom_height: 70,

        //toolbar
        toolbar:  ToolbarSimpleFastor( context, "Page Shapes"),
        toolbar_height : 70,

        //background
        // colorBackground: Colors.red,
        assetBackground: const AssetImage("assets/images/background.png"),
        assetBackgroundOpacity: 0.9,
        // widgetBackground: CustomWidgetBackground(),

        content: getContent() );
  }

  Widget getContent() {
    return  TextTemplate.t( "Feature of PageTemplate" );
  }


}