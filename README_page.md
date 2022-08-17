# Tutorial : Page

## Get Start 
### Full Example
1- Create New Widget extends "StatefulWidget"
2- inside build() make return "PageTemplate.t()"

```
import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

class TutorialCreateFastorPage extends StatefulWidget {
  @override
  TutorialCreateFastorState createState() => TutorialCreateFastorState();
}

class TutorialCreateFastorState extends State<TutorialCreateFastorPage> {
  
  @override
  Widget build(BuildContext context) {
    return PageTemplate.t( this,
        content: getContent() );
  }
  
  Widget getContent() {
    return  TextTemplate.t( "Empty page" );
  }
  
}
```

## Empty Screen

<img src="/screens/page/empty.png" height="100"/>

```
@override
Widget build(BuildContext context) {
return PageTemplate.t( this,
content: getContent() );
}
```
