import 'package:fastor_app/genericUI/background/CustomWidgetBackground.dart';
import 'package:fastor_app/resource/ui/navigation/v/NavigationFastor.dart';
import 'package:fastor_app/resource/ui/toolbar/ToolbarSimpleFastor.dart';
import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

class TutorialPageFastorScreen extends StatefulWidget {

  @override
  TutorialPageFastorState createState() => TutorialPageFastorState();



}

class TutorialPageFastorState extends State<TutorialPageFastorScreen> {


  @override
  Widget build(BuildContext context) {
    return PageFastor(this,

        //color
        statusBarColorCustom: HexColor(  "#000000"),
        homeButtonsBackgroundColor: HexColor(  "#000000"),

        //navigation bottom
        // navigationBottom: NavigationFastor( context, 0),
        // navigationBottom_height: 70,

        //toolbar
        toolbar:  ToolbarSimpleFastor( context, "Scroll Content"),
        toolbar_height : 70,

        //background
        colorBackground: Colors.grey,
        // assetBackground: const AssetImage("assets/images/background.png"),
        // assetBackgroundOpacity: 0.9,
        // widgetBackground: CustomWidgetBackground(),

        content: getContent() );
  }

  Widget getContent() {
    return Column( children: getLongDataForTestScroll() ,);
  }

  List<Widget> getLongDataForTestScroll() {
    List<Widget> data = [];
    for (int i = 1; i <= 70; i++) {
      var w = TextFastor(
        "Get ride of RenderFlex, data number $i",
        fontSize: 15,
        width: 300,
        color: Colors.yellow,
        margin: EdgeInsets.all(5),
      );
      data.add(w);
    }
    return data;
  }


}