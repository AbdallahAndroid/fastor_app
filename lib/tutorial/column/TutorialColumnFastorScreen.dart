import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

class TutorialColumnFastorScreen extends StatefulWidget {
  @override
  _TutorialColumnFastorState createState() => _TutorialColumnFastorState();
}

class _TutorialColumnFastorState extends State<TutorialColumnFastorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: typeFastorColumn()));
  }

  Widget typeFastorColumn() {
    return ColumnFastor(
        children: getChildren(),
        margin: EdgeInsets.only(top: 40, left: 60, right: 60),
        padding: EdgeInsets.all(5),
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize : MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.start,
      colorBackground: Colors.black,
        // decoration: BoxDecoration(
        //     border: Border.all(color: Colors.red),
        //     borderRadius: BorderRadius.all(Radius.circular(15)),
        //     color: Colors.yellow //background color
        //     )
    );
  }

  List<Widget> getChildren() {
    List<Widget> data = [];
    for (int i = 1; i <= 7; i++) {
      var w = ButtonFastor(
        "Data $i",
        textFontSize: 15,
        () {},
        margin: EdgeInsets.all(5),
      );
      data.add(w);
    }
    return data;
  }
}
