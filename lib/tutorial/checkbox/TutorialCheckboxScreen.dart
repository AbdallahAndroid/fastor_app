import 'package:fastor_app/resource/ui/toolbar/ToolbarSimpleFastor.dart';
import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

import '../../resource/resourceProject/FontProject.dart';

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
    //change colors
    DSColor.tap_inactive =  HexColor( "#5c2313"); //brown
    DSColor.tap_active =  HexColor( "#5c2313");  //green
    
    return testCheckbox(context, isAgree, (updatedValue) {
      setState(() {
        isAgree = updatedValue!;
      });
    },
        margin: EdgeInsets.only(top: 10),
        text: "Are you agree to terms and condition.",
        text_color: Colors.brown
    );
  }

  Widget textSelectedValue() {
    var title = TextFastor(
      "Selected result: ",
      fontSize: 12,
      margin: EdgeInsets.only(top: 40),
      color: Colors.black,
    );

    var value = TextFastor(
      "$isAgree",
      fontSize: 12,
      margin: EdgeInsets.only(top: 40),
      color: Colors.red,
    );

    return RowScrollFastor(children: [title, value]);
  }

  //--------- build

  static Widget testCheckbox(BuildContext context, bool value, ValueChanged<bool?> onChanged,{
    bool removePaddingClick = true,
    double size_scale = 1.0,
    EdgeInsets? margin,
    EdgeInsets? padding,

    //text
    String text = "",
    double text_dimen = 0,
    Color? text_color,
    String? fontFamily,
  }){

    //Checkbox
    var ch = Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: DSColor.tap_active,  //background color when it's active
    );

    //theme
    var theme = Theme(
      data: Theme.of( context).copyWith(
          unselectedWidgetColor: DSColor.tap_inactive,       //inactive color
          toggleableActiveColor: DSColor.tap_active,
      ),
      child: ch ,
    );


    // default padding size
    final double defaultPaddingSizeClick = 20;

    /**
     * this default padding cause the click more easy to mobile
     *  the mobile when click arround the checkbox it's working
     */
    double paddingCheckBoxClick = 40;
    if ( removePaddingClick ) {
      paddingCheckBoxClick = defaultPaddingSizeClick;
    }

    //fix: remove default padding
    var sizeBox = SizedBox( child:  theme, width: paddingCheckBoxClick, height: paddingCheckBoxClick   );

    //fix material
    // var material = Material(child:  sizeBox    );

    //size by scale
    var scale = Transform.scale(scale: size_scale, child:  sizeBox );

    /////////////////////////////////////// text

    //font
    fontFamily ??= DSFont.h3 ;

    //fix null
    String paddingLeftCheckBoxTap = "  ";
    String s = paddingLeftCheckBoxTap +  text;

    //language
    // s  = s.tr();

    //dimen
    var myDimen = DSDimen.text_level_3;
    if ( text_dimen != 0 ) {
      myDimen = text_dimen;
    }

    //color
    Color myColor = DSColor.text_h3;
    if  ( text_color  != null ) {
      myColor = text_color;
    }

    //style
    var myStyle = TextStyle(
        fontSize: myDimen,
        color: myColor,
        fontFamily: fontFamily,
        decoration: TextDecoration.none
    );

    //tx
    var tx = Text( s , textAlign: TextAlign.left,
        style: myStyle );


    //row title
    var row = RowTemplate.wrapChildren(  [
      scale,
      tx
    ]);

    //fix default padding at the container when there is padding for click
    if(removePaddingClick == false ){
      padding = EdgeInsetsTools.fixDefaultSpace( padding, defaultPaddingSizeClick);
    }

    // space
    var ct = Container(

        margin: margin ,
        padding: padding,
        child:  row );

    return ct;
  }

}
