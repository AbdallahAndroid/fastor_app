import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

class TutorialButtonScreen extends StatefulWidget {

  @override
  TutorialButtonState createState() => TutorialButtonState();

}

class TutorialButtonState extends State<TutorialButtonScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold( body: SafeArea( child: getContent() ) );
  }


  Widget getContent() {
    return Column( children: [
      buttonNormal(),
      buttonFastor(),
      TextFastor( "h1", fontSize: 15,),
      Text( "h2")
    ],
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,);
  }


  Widget buttonNormal() {
    return   ElevatedButton(onPressed:(){
      print( "click on btn type normal");
    },
      child: Text('Normal Btnnnnnnnnnnnnnnn'), );
  }


  Widget buttonFastor() {
    return ButtonFastor( "Fastor Btn", () {
      print( "click on btn type fastor");
    } ,
      textColor: HexColor("#000000"),
      background: HexColor("#999999"),
      // textFontSize: 15,
      // height: 35,

    );
  }


}