import 'package:fastor_app/resource/resourceProject/FontProject.dart';
import 'package:fastor_app/resource/ui/toolbar/ToolbarSimpleFastor.dart';
import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:fastor_app_ui_widget/resource/template/page/PageFastor.dart';
import 'package:fastor_app_ui_widget/resource/template/text/TextFastor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TutorialTextfieldPage extends StatefulWidget {
  @override
  TutorialTextfieldState createState() {
    return TutorialTextfieldState();
  }

}

class TutorialTextfieldState extends State<TutorialTextfieldPage > {


  @override
  Widget build(BuildContext context) {
    return PageFastor( this,
        statusBarColorCustom: Colors.black,
        homeButtonsBackgroundColor: Colors.black,
        //toolbar
        toolbar:  ToolbarSimpleFastor( context, "Tutorial TextView"),
        toolbar_height : 70,
        content: getContent() );
  }


  Widget getContent() {
    return Column( children: [

      tf_email(),
      bt_send_otp()
    ],);
  }

  var email_txt = "";
  var email_valid = AutovalidateMode.disabled;

  Widget tf_email() {
    return TextFieldTemplate.t(
        autovalidateMode: email_valid,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all( 5),
        validator: ValidatorTemplate.email( ),
        keyboardType: TextInputType.emailAddress,
        onChanged: (s){
          email_txt = s;
          Log.i( "tf_email() - change s: $s ");
        }
    );
  }


  Widget bt_send_otp() {
    return ButtonFastor( "SEND", margin: EdgeInsets.only(top: 40), () {
      validate();
    });
  }


  bool validate() {
    var result = true; //default good
    //email
    if ( ToolsValidation.isEmail( email_txt ) == false  ){
      Log.i( "missed email");
      result  = false;
      setState(() {
        email_valid = AutovalidateMode.always;
      });
    }
    return result;
  }


}