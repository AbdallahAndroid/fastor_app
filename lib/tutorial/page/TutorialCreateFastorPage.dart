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
    return PageTemplate.t( this,

        // //toolbar
        // toolbar: ToolbarSimpleFastor( context, "Page Shapes"),
        // toolbar_height : 70,
        //
        // //background
        // widgetBackground: CustomWidgetBackground(),
        //
        // //navigation bottom
        // navigationBottom: NavigationFastor( context, 0),
        // navigationBottom_height: 70,

        //color
        homeButtonsBackgroundColor: HexColor(  "#660000"),


        content: getContent() );
  }

  Widget getContent() {
    return  TextTemplate.t( "Color Feature" );
  }


}