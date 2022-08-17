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
        toolbar: ToolbarSimpleFastor( context, "Page Shapes"),
        toolbar_height : 70,
        content: getContent() );
  }

  Widget getContent() {
    return  TextTemplate.t( "Empty page" );
  }


}