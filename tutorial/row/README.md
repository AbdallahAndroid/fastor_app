## Tutorial : RowFastor

### Why use Fastor widget ?

* Reduce 28% of chars in writing code
* Reduce 28% of lines breaks

### Feature Fastor 
* Margin without use Container
* Padding without use Container
* Decoration background without use Container
* Text Align without use Style
* Text Decoration without use Style
* Font size without use Style
* Font family without use Style
* On tap without use GestureDetector

### Table Result : Percentage of code writing reduction

Using Fastor widget reduce writing code by 28% chars when you compare with normal flutter widget

<img src="https://raw.githubusercontent.com/AbdallahAndroid/fastor_app/master/tutorial/textview/text_compare.png" 
width="1300" height="175"/>

See source code compare between Fastor and Normal at this page

### Get Start 
#### Full Example

```
    TextFastor(
        "Text Fastor Simple" ,
        textAlign: TextAlign.center,
        textDecoration: TextDecoration.underline,
        color:  Colors.blue,
        fontSize: 25,
        fontFamily: FontProject.marina,
      margin: EdgeInsets.all( 25 ),
      padding: EdgeInsets.all( 10),
      decoration: BoarderHelper.cardView(
        colorLine: Colors.red,
        colorBackground: Colors.yellow,
        radiusSize: 15
      ),
      // backgroundColor: Colors.green,
      maxLines: 2,
      onPressed: (){
          Log.i( "click on fastor widget");
      },
    );
```

### Compare Text() Normal Vs TextFastor()

<img src="https://raw.githubusercontent.com/AbdallahAndroid/fastor_app/master/tutorial/textview/text_screen.png" height="300"/>


```

  Widget getContent() {
    return Column( children: [
     textview_normal(),
      textview_fastor()
    ],);
  }

  Widget textview_normal() {
    return GestureDetector( child:  Container(
      child: Text(
      "Text Normal" ,
      textAlign: TextAlign.center,
      maxLines: 2,
      style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
          color: Colors.blue,
          fontSize: 25,
          fontFamily: FontProject.marina
      ),
    ),
      margin: EdgeInsets.all( 25 ),
      padding: EdgeInsets.all( 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red ) ,
          borderRadius: BorderRadius.all(
              Radius.circular( 15 )
          ) ,
          color: Colors.yellow     //background color
      ),
      // color: Colors.green,
    ),
    onTap: (){
      Log.i( "click on Normal");
    },
    );
  }


  Widget textview_fastor() {
    return TextFastor(
        "Text Fastor" ,
        textAlign: TextAlign.center,
        textDecoration: TextDecoration.underline,
        color:  Colors.blue,
        fontSize: 25,
        fontFamily: FontProject.marina,
      margin: EdgeInsets.all( 25 ),
      padding: EdgeInsets.all( 10),
      decoration: BoarderHelper.cardView(
        colorLine: Colors.red,
        colorBackground: Colors.yellow,
        radiusSize: 15
      ),
      // backgroundColor: Colors.green,
      maxLines: 2,
      onPressed: (){
          Log.i( "click on fastor widget");
      },
    );
  }
```

<hr class="solid">