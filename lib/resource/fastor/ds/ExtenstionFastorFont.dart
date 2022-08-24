import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:fastor_app/resource/fastor/ds/DesignSystemFastor.dart';
import 'package:fastor_app/resource/resourceProject/FontProject.dart';

extension ExtenstionFastorFont on DesignSystemFastor {

  void initFont(){

    //normal
    DSFont.hparent = FontProject.marina;
    DSFont.h1 = FontProject.marina;
    DSFont.h2 = FontProject.marina; //SemiBold
    DSFont.h3 = FontProject.marina;
    DSFont.h4 = FontProject.marina;

    //big title
    DSFont.h3_title = FontProject.marina;
    DSFont.h4_title = FontProject.marina;

    //button
    DSFont.button_large = FontProject.marina;
    DSFont.button_small = FontProject.marina;
  }


}