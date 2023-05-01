  import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
  import 'package:flutter/material.dart';

  import '../../resource/resourceProject/FontProject.dart';

  /**
      responsive_auto: true,
   */
  class TutorialImageFastorScreen extends StatefulWidget {

    @override
    State<StatefulWidget> createState() => TutorialImageFastorState();
  }

  class TutorialImageFastorState extends State<TutorialImageFastorScreen> {


    String square_url_image_example = "https://www.dropbox.com/s/iiajbyc98wq1c1x/image_225_by_225.jpeg?dl=1";

    String landscape_url_image_example = "https://www.dropbox.com/s/yva89tybsy8trhn/image_278_by_181.jpeg?dl=1";


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


          imageFastorAssetPortrait(),
          TextFastor( "Set Image type assets + Corner Radius",
            fontSize : 20, margin: EdgeInsets.all(20),),
          Placeholder( color: Colors.black, fallbackHeight: 1,),
        ],
      ));
    }


    Widget imageFastorAssetPortrait() {
      return ImageFastor(
        context:  context,
        width: 300,
        height: 600,
        radius_all: 25,
        assetAspectRatio:  AssetImage("assets/images/background.png"),
      );
    }


    Widget imageFastorShapeRectangle() {
      return ImageFastor(
        context:  context,
        width: 278,
        height: 181,
        margin: EdgeInsets.all( 10),
        radius_all: 25,
        boxFit_background: BoxFit.cover,
        urlBackground: landscape_url_image_example,
        colorBackground: Colors.amber,
        opacity: 0.7,
        onPressed: (){
          print("click on image");
        },
      );
    }

  }