import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

class TutorialRowFastorScreen extends StatefulWidget {
  @override
  TutorialRowFastorState createState() => TutorialRowFastorState();
}

class TutorialRowFastorState extends State<TutorialRowFastorScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: getContent()));
  }

  Widget getContent() {
    return Center(child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [


        rowFastorScrollHorizontal(),
        TextFastor( "Row Scroll Horizontal for get ride from flex",
          fontSize : 20, margin: EdgeInsets.all(20),),
        Placeholder( color: Colors.black, fallbackHeight: 1,),
      ],
    ));
  }


  List<Widget> getChildren() {
    List<Widget> data = [];
    for( int i  = 1 ; i <= 7 ; i++ ) {
      var w = TextFastor( "Data $i", fontSize: 15,);
      data.add( w );
    }
    return data;
  }

  Widget rowFastorScrollHorizontal() {
    return RowScrollFastor(  children: getChildren()  );
  }

}