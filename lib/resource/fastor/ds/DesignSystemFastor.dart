
import 'package:fastor_app/resource/fastor/ds/ExtenstionFastorDimen.dart';

import 'ExtenstionFastorColor.dart';
import 'ExtenstionFastorFont.dart';

class DesignSystemFastor {

  DesignSystemFastor._();
  static bool _isSync = false ;

  //+++++++++++++++++++----------------------- single tone

  static DesignSystemFastor ensureInitialized() {
    if ( _isSync == false ) {
      _isSync = true;
      DesignSystemFastor._().initColor();
      DesignSystemFastor._().initFont();
      DesignSystemFastor._().initDimen();
    }
    return DesignSystemFastor._();
  }


}