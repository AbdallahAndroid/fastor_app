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
        colorBackground: Colors.yellow,
        statusBarColorCustom: Colors.black,
        homeButtonsBackgroundColor: Colors.black,
        //toolbar
        toolbar:  ToolbarSimpleFastor( context, "Tutorial TextField"),
        toolbar_height : 70,
        content: getContent() );
  }


  Widget getContent() {
    return ColumnFastor(
      margin: EdgeInsets.all( 30),
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

      TextFastor( "Enter Your Email" ),

      tf_email(),
      bt_send_otp()
    ],);
  }

//----------------------------------------------------- variable validate textField

  var email_txt = "";
  var email_valid = AutovalidateMode.disabled;

  //---------------------------------------------------------------- textfield

  Widget tf_email() {
    return TextFieldFastor(
        autovalidateMode: email_valid,
        margin: EdgeInsets.only( top: 10 ),
        padding: EdgeInsets.all( 5),
        background_color: Colors.white,
        validatorCustom: ValidatorTemplate.email(error_text: "Missed Enter Email" ),
        keyboardType: TextInputType.emailAddress,
        onChanged: (s){
          email_txt = s;
         // Log.i( "tf_email() - change s: $s ");
        }
    );
  }

  //---------------------------------------------------------- button validate

  Widget bt_send_otp() {
    var bt =  ButtonFastor( "SEND",
        background: Colors.black,
        textColor: Colors.white,
        width: 200,
        margin: EdgeInsets.only(top: 40), ()async  {
          bool status = await InternetTools.isConnected();
          Log.i( "click - status: $status" );
          if(validateEmailAfterClick())  {
            ///TO-DO : After success success field
          }
    });

    return Container( child:  bt,
      alignment: Alignment.center,
      width: double.infinity,
    );
  }


  bool validateEmailAfterClick() {
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