
import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';


class TutorialCheckboxScreen extends StatefulWidget {
  @override
  TutorialCheckboxState createState() => TutorialCheckboxState();
} //dd

class TutorialCheckboxState extends State<TutorialCheckboxScreen> {


  @override
  Widget build(BuildContext context) {
    return PageFastor(this,
        colorBackground: Colors.white.withOpacity(0.9),
        statusBarColorCustom: Colors.black,
        homeButtonsBackgroundColor: Colors.black,
        //toolbar
        toolbar: ToolbarSimpleFastor(context, "Tutorial Checkbox"),
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
        TextFastor("Select Checkbox"),
        inputFastor(),
        textSelectedValue()
      ],
    ));
  }

  bool isAgree = false;

  Widget inputFastor() {
    return CheckboxFastor( context: context, value: isAgree,
        margin: EdgeInsets.only(top: 10),
        text: "Are you agree to terms and condition.",
        text_color: Colors.brown,
        text_dimen: 20,
        color_inactive : Colors.brown,
        color_active: Colors.green,
        onChanged:  (updatedValue) {
          setState(() {
            isAgree = updatedValue!;
          });
        }
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
      "$isAgree",
      fontSize: 25,
      margin: EdgeInsets.only(top: 40),
      color: Colors.red,
    );

    return RowScrollFastor(children: [title, value]);
  }



}
