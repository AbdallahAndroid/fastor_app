import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:fastor_app/resource/fastor/ds/DesignSystemFastor.dart';

extension ExtenstionFastorDimen on DesignSystemFastor {

  Future initDimen() async {

    //button
    DSDimen.ds_button_large_corner = 20;
    DSDimen.ds_button_small_corner = 60;

    //corner
    DSDimen.ds_size_corner_level_1 = 20;
  }
}