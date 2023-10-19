import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:fastor_app/resource/fastor/ds/DesignSystemFastor.dart';
import 'package:fastor_app/resource/resourceProject/FontProject.dart';

extension ExtenstionFastorFont on DesignSystemFastor {

  void initFont(){

    //normal
    DSFont.hparent = FontProject.cairo;
    DSFont.h1 = FontProject.cairo;
    DSFont.h2 = FontProject.cairo; //SemiBold
    DSFont.h3 = FontProject.cairo;
    DSFont.h4 = FontProject.cairo;

    //big title
    DSFont.h3_title = FontProject.cairo;
    DSFont.h4_title = FontProject.cairo;

    //button
    DSFont.button_large = FontProject.cairo;
    DSFont.button_small = FontProject.cairo;
  }


}