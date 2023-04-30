import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

import '../../resource/resourceProject/FontProject.dart';

class TutorialButtonScreen extends StatefulWidget {
  @override
  TutorialButtonState createState() => TutorialButtonState();
}

class TutorialButtonState extends State<TutorialButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: getContent()));
  }

  Widget getContent() {
    return Center(child: Column(
      children: [

        buttonNormal(),
        Placeholder( color: Colors.black, fallbackHeight: 1,),
        buttonFastor(),
        Placeholder( color: Colors.black, fallbackHeight: 1,),
      ],
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
    ));
  }

  Widget buttonNormal() {
    return Container(
      margin: EdgeInsets.symmetric( vertical: 30),
      child: ElevatedButton(
          onPressed: () {
            print("click on btn type normal");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder (
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(width: 1,color: Colors.blue)
          )),
          child: Text(
            "Button Normal",
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
                fontFamily: FontProject.marina
            ),
          )
      ),
      // color: Colors.green,
    );
  }

  Widget buttonFastor() {
    return ButtonFastor(
      "Button Fastor",
      () {
        print("click on btn type fastor");
      },
      margin: EdgeInsets.symmetric( vertical: 40),
      textColor: Colors.blue,
      background: Colors.black,
      fontFamily: FontProject.marina,
      textFontSize: 15,
      borderLine: Colors.blue,
      borderRadius: 15,
    );
  }
}
