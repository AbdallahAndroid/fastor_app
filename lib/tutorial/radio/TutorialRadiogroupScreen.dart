import 'package:fastor_app/resource/ui/toolbar/ToolbarSimpleFastor.dart';
import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:fastor_app_ui_widget/resource/template/radio/RadioFastor.dart';
import 'package:flutter/material.dart';


class TutorialRadiogroupScreen extends StatefulWidget {
  @override
  TutorialRadiogroupState createState() => TutorialRadiogroupState();
} //dd

class TutorialRadiogroupState extends State<TutorialRadiogroupScreen> {


  @override
  Widget build(BuildContext context) {
    return PageFastor(this,
        colorBackground: Colors.white.withOpacity(0.9),
        statusBarColorCustom: Colors.black,
        homeButtonsBackgroundColor: Colors.black,
        //toolbar
        toolbar: ToolbarSimpleFastor(context, "Tutorial Radio Group"),
        toolbar_height: 70,
        content: getContent());
    // return Scaffold(body: getContent() ,);
  }

  Widget getContent() {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFastor("Tutorial Select One Radio Button"),
        radioMale(),
        radioFemale(),
        textSelectedValue()
      ],
    ));
  }

  static const keyGroup = "gender";
  static const radioValue_male = "male";
  static const radioValue_female = "female";
  var selectedResult = "not-selected-yet";

  Widget radioMale() {
    return RadioFastor(   radioSpecialValue: radioValue_male,
        margin: EdgeInsets.only(top: 10),
        text: "I am Male",
        // text_child: TextFastor("Choose Gender"),

        // color_inactive : Colors.brown,
        // color_active: Colors.green,
        onChange:  (updatedValue) {
          setState(() {
            selectedResult = updatedValue!;
          });
        }, groupValue: keyGroup,
    );
  }


  Widget radioFemale() {
    return RadioFastor(   radioSpecialValue:  radioValue_female,
      margin: EdgeInsets.only(top: 10),
      text: "I am female",
      // text_child: TextFastor("Choose Gender"),

      // color_inactive : Colors.brown,
      // color_active: Colors.green,
      onChange:  (updatedValue) {
        setState(() {
          selectedResult = updatedValue!;
        });
      }, groupValue: keyGroup,
    );
  }


  Widget textSelectedValue() {
    var title = TextFastor(
      "Selected result: ",
      fontSize: 23,
      margin: EdgeInsets.only(top: 40),
      color: Colors.black,
    );

    var value = TextFastor(
      "$selectedResult",
      fontSize: 25,
      margin: EdgeInsets.only(top: 40),
      color: Colors.red,
    );

    return RowScrollFastor(children: [title, value]);
  }



}
