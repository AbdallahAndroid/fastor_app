import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

class TutorialColumnFastorScreen extends StatefulWidget {
  @override
  _TutorialColumnFastorState createState() => _TutorialColumnFastorState();
}

class _TutorialColumnFastorState extends State<TutorialColumnFastorScreen> {
  @override
  Widget build(BuildContext context) {
    return PageFastor(this , content: compareWidget() );
    // return PageFastor( this , content: typeFastorColumn() );
  }

  Widget compareWidget(){
    return Center(child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        /**
            TextFastor( "Type Normal", margin: EdgeInsets.only(top: 30),),
            typeNormalColumn(),
            const Placeholder( color: Colors.black, fallbackHeight: 1,),

         */

        TextFastor( "Type Fastor", margin: EdgeInsets.only(top: 30),),
        typeFastorColumn(),
        const Placeholder( color: Colors.black, fallbackHeight: 1,),
      ],
    ));
  }


  Widget typeNormalColumn() {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 60),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(15)),
            // color: Colors.red,
            color: Colors.yellow //background color
        ),
        child:  Column(
            children: getChildren()
        )
    ) ;
  }


  Widget typeFastorColumn() {
    return ColumnFastor(
        children: getChildren(),
        margin: EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 60),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.yellow //background color
        ),
    );
  }


  List<Widget> getChildren() {
    List<Widget> data = [];
    for (int i = 3; i <= 7; i++) {
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
