import 'package:flutter/material.dart';

/**
    static AssetImage name  = AssetImage( "assets/shika/images/name.png");
 */
class DrawableProject {

  static AssetImage exampleMobile(String nameImage ) {
     AssetImage  ass  = AssetImage( "assets/example_mobile/" + nameImage + ".png");
     return ass;
  }

  static AssetImage exampleAdmin(String nameImage ) {
    AssetImage  ass  = AssetImage( "assets/example_admin/" + nameImage + ".png");
    return ass;
  }

  //WalkThroughPage
  static AssetImage  boarder_1  = AssetImage( "assets/images/boarder_1.jpg");
  static AssetImage  boarder_2  = AssetImage( "assets/images/boarder_2.jpg");

  //placeholder image
  static AssetImage  placeholderImage  = AssetImage( "assets/images/logo_with_horizontal.png"); //logo_with_horizontal.png

  //background auth
  static AssetImage backgroundAuth = AssetImage("assets/images/background_auth.jpeg");

  //---------------------------------------------------------- folder : admin

  static AssetImage admin(String nameImage ) {
    AssetImage  ass  = AssetImage( "assets/admin/" + nameImage + ".png");
    return ass;
  }


  //---------------------------------------------------------- folder : Images

  //images
  static AssetImage images(String nameImage ) {
    AssetImage  ass  = AssetImage( "assets/images/" + nameImage + ".png");
    return ass;
  }

  //images
  static AssetImage images_with_extension(String nameImage ) {
    AssetImage  ass  = AssetImage( "assets/images/" + nameImage );
    return ass;
  }
}