## Tutorial : TextFieldFastor

### Feature Fastor 
+  Call from constructor of class

```
    // validate
    this.validator,
    this.autovalidateMode,
    this.error_text = "Missed",

    //text and hint
    this.hint_text,
    this.text_color,
    this.fontSize,
    this.hint_color,

    //boarder and underline
    this.isRemoveUnderline = false,
    this.isShowBoarder,

    //background
    this.background_color,
    this.decoration,              //at the Container

    //spaces
    this.padding,
    this.margin,

    //controller
    this.controller,
    this.onChanged,

    //input content type
    this.keyboardType,
    this.obscureText = false,

    //size and max/min
    this.width,
    this.maxLength,
    this.maxLines,
    this.minLines,

    //other
    this.textAlign  ,
    this.focusNode,
    this.prefixIcon
```
 
### Get Start 

<img src="https://raw.githubusercontent.com/AbdallahAndroid/fastor_app/master/tutorial/textfield/thump.png"
height="300"/>

#### Simple Example
* Create Variable at class
```
  var email_txt = "";
  var email_valid = AutovalidateMode.disabled;
```

* Create Widget
```
    return TextFieldFastor(
        autovalidateMode: email_valid,
        margin: EdgeInsets.only( top: 10 ),
        padding: EdgeInsets.all( 5),
        background_color: Colors.white,
        validator: ValidatorTemplate.email( ),
        keyboardType: TextInputType.emailAddress,
        onChanged: (s){
          email_txt = s;
          Log.i( "tf_email() - change s: $s ");
        }
    );
```

* Validate Form after click of button  
```
          if(validateEmailAfterClick())  {
            ///TO-DO : After success success field
          }
```

```
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
```

#### Full Example

```

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
        validator: ValidatorTemplate.email( ),
        keyboardType: TextInputType.emailAddress,
        onChanged: (s){
          email_txt = s;
          Log.i( "tf_email() - change s: $s ");
        }
    );
  }

  //---------------------------------------------------------- button validate

  Widget bt_send_otp() {
    var bt =  ButtonFastor( "SEND",
        background: Colors.black,
        textColor: Colors.white,
        width: 200,
        margin: EdgeInsets.only(top: 40), () {
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

```
 

<hr class="solid">