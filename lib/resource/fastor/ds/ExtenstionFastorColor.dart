
import 'package:fastor_app/resource/fastor/ds/DesignSystemFastor.dart';
import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';

import 'package:flutter/material.dart';
import 'package:fastor_app/resource/resourceProject/ColorProject.dart';


extension ExtenstionFastorColor on DesignSystemFastor {

  Future initColor() async {
    _statusBar( );
    _card();
    _progress();
    _toolbar();
    _homeButtonBar();
    _background();
    _text();
    _button();
    _textField_and_spiiner();
    _other();

    //admin panel almost uses
    _table();
    _menu();
  }

  //+++++++++++++++++++---------------------- private

  static Future _statusBar( ) async{
    StatusBarConstant.colorBackground = HexColor( ColorProject.blue_fish_front )  ;
    StatusBarConstant.colorText_brightness = Brightness.light;
  }

  static Future _card() async {
    DSColor.cardview_shadow =  HexColor( ColorProject.blueTransparent)  ;
    DSColor.cardview_boarderLine =  HexColor( ColorProject.white_sun_3)  ;
    DSColor.cardview_background_color =  HexColor( ColorProject.white_sun_2)  ;
  }


  static Future _progress() async {
    DSColor.ds_progress =  HexColor( ColorProject.green_3)  ;
    DSColor.ds_progress_fade_1 = HexColor( ColorProject.blue_fish_front)  ;
    DSColor.ds_progress_fade_2 = HexColor( ColorProject.blue_fish_back)  ;
  }


  static Future _background( ) async{
    DSColor.ds_background_all_screen =  HexColor( ColorProject.white_sun_4)  ;
    DSColor.ds_background_layout_1 =  HexColor( ColorProject.white_sun_4)  ;
    DSColor.ds_background_layout_2 =  HexColor( ColorProject.white_sun_4)  ;
    DSColor.ds_background_layout_3 =  HexColor( ColorProject.white_sun_4)  ;
    DSColor.ds_background_layout_4 =  HexColor( ColorProject.white_sun_4)  ;
    DSColor.ds_background_layout_3_transparent =  HexColor( ColorProject.blueTransparent)  ;
  }

  static Future _toolbar( ) async{
    DSColor.ds_background_toolbar  =  HexColor( ColorProject.blue_fish_front)  ;
    DSColor.toolbar_title =  HexColor( ColorProject.black_1)  ;
  }


  static Future _homeButtonBar( ) async{
    DSColor.homeButtons_background  =  HexColor( ColorProject.blue_fish_front );
  }

  static Future _text( ) async{
    //normal
    DSColor.text_parent =  HexColor( ColorProject.black_1)  ;
    DSColor.text_h1 =  HexColor( ColorProject.black_1)  ;
    DSColor.text_h2 =  HexColor( ColorProject.black_2)  ;
    DSColor.text_h3 =  HexColor( ColorProject.blue_fish_front)  ;
    DSColor.text_h4 =  HexColor( ColorProject.blue_fish_front)  ;

    //background dark
    DSColor.ds_text_h1_for_background_dark = HexColor( ColorProject.white_sun_4);
    DSColor.ds_text_h2_for_background_dark = HexColor( ColorProject.white_sun_4);
    DSColor.ds_text_h3_for_background_dark = HexColor( ColorProject.white_sun_4);
    DSColor.ds_text_h4_for_background_dark = HexColor( ColorProject.white_sun_4);
    DSColor.ds_text_h2_for_background_dark_typeTitle = HexColor( ColorProject.white_sun_4);
    DSColor.ds_text_h2_for_background_dark_typeSmall = HexColor( ColorProject.white_sun_4);

    //error and cancel
    DSColor.ds_error = HexColor(  ColorProject.yellow_2);
    DSColor.ds_cancel = HexColor(  ColorProject.yellow_2);
  }


  static Future _button( ) async{
    DSColor.ds_button_large_text =  HexColor( ColorProject.white_sun_4)  ;
    DSColor.ds_button_large_background =  HexColor( ColorProject.blue_fish_front)  ;
    DSColor.ds_button_small_text =  HexColor( ColorProject.white_sun_4)  ;
    DSColor.ds_button_small_background =  HexColor( ColorProject.blueCerulean_3)  ;
  }


  static Future _textField_and_spiiner() async {

    //+++++++++++++++++++++  textfield

    DSColor.ds_textfield_hint =  HexColor( ColorProject.blue_fish_front); // HexColor( ColorProject.yellow_3);
    DSColor.ds_textfield_text = HexColor( ColorProject.black_1 );
    DSColor.ds_textfield_boarder_line = HexColor(ColorProject.blue_fish_front );
    DSColor.ds_textfield_boarder_background = HexColor( ColorProject.blue_fish_front );

    DSColor.cursor_selectedText = HexColor( ColorProject.blue_fish_front );

    //+++++++++++++++++++++++++++++ spinner

    DSColor.spinner_background  = DSColor.ds_textfield_boarder_background;
    DSColor.spinner_underline =   DSColor.ds_textfield_hint ;
    DSColor.spinner_hint =   HexColor( ColorProject.greyDark)  ;
  }


  static Future _other() async {

    //+++++++++++++++++++checkbox, radio

    DSColor.tap_active = HexColor( ColorProject.blueCerulean_1 );
    DSColor.tap_inactive = HexColor( ColorProject.blueCerulean_3 );

    //+++++++++++++++++++ switch

    DSColor.switch_active = HexColor( ColorProject.blueCerulean_1 );
    DSColor.switch_inactive = HexColor( ColorProject.blueCerulean_3 );

    //+++++++++++++++++++ toast

    DSColor.ds_toast_background = HexColor( ColorProject.blueCerulean_1 );
    DSColor.ds_toast_text = HexColor( ColorProject.white_sun_4 );

    //+++++++++++++++++++ image

    DSColor.image_circle =  HexColor( ColorProject.blueCerulean_3 ) ;

    //+++++++++++++++++++ line separator

    DSColor.separatorLine_backgroundWhite =    HexColor( ColorProject.blueTransparent ) ;

    //++++++++++++++++++ hyperlink

    DSColor.link =  HexColor( ColorProject.blue_other_2 );

  }

  static _table(){

    //+++++++++++++++++++ table

    DSColor.table_header_background = HexColor( ColorProject.white_sun_1 );
    DSColor.table_header_title = HexColor( ColorProject.blueCerulean_3 );  //blue_fish_front
    DSColor.table_header_boader = HexColor( ColorProject.blueTransparent ); //black_1
    DSColor.table_row_background = HexColor( ColorProject.blueTransparent_white_sun_1 );
    DSColor.table_row_title = HexColor( ColorProject.coral_1 );
    DSColor.table_row_boader = HexColor( ColorProject.blueTransparent );
  }

  static _menu() {
    DSColor.menu_background = HexColor( ColorProject.white_sun_1 );
    DSColor.menu_selected = HexColor( ColorProject.white_sun_1 );
  }

}