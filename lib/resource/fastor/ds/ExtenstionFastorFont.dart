import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:fastor_app/resource/fastor/ds/DesignSystemFastor.dart';
import 'package:fastor_app/resource/resourceProject/FontProject.dart';

extension ExtenstionFastorFont on DesignSystemFastor {

  void initFont(){

    //normal
    DSFont.hparent = FontProject.mermaid_astramadea;
    DSFont.h1 = FontProject.marina;
    DSFont.h2 = FontProject.beachThin; //SemiBold
    DSFont.h3 = FontProject.beachThin;
    DSFont.h4 = FontProject.beachThin;

    //big title
    DSFont.h3_title = FontProject.fishDemo;
    DSFont.h4_title = FontProject.fishDemo;

    //button
    DSFont.button_large = FontProject.fishDemo;
    DSFont.button_small = FontProject.fishDemo;
  }


}