import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

class CustomWidgetBackground extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var logo  = ImageViewTemplate(context: context, widthNeeded: 75, heightNeeded: 75,

    assetBackground: AssetImage("assets/images/logo_example.png"),
    );

    return Container( width: DeviceTools.getWidth(context),
    height: DeviceTools.getHeight(context),
      alignment: Alignment.center,
      color: Colors.white,
      child:  logo,
    );
  }
}