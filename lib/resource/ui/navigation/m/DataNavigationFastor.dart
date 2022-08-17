import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';

import 'package:fastor_app/resource/resourceProject/ColorProject.dart';
import 'package:fastor_app/resource/ui/navigation/m/ItemNavigationFastor.dart';

class DataNavigationFastor {


  //active now
  static int activeIndex = 1; //here is the default button index


  //list of navigation
  static List<ItemNavigationFastor> listItemNavigation = [
    ItemNavigationFastor(position: 0, title: "Profile", goToPage:  Text( "Profile"), iconData: Icons.person),
    ItemNavigationFastor(position: 1, title: "Home", goToPage:  Text( "Home"), iconData: Icons.home),
    ItemNavigationFastor(position: 2, title: "Cart", goToPage:  Text( "Cart"), iconData: Icons.shopping_basket),
    ItemNavigationFastor(position: 3, title: "Notification", goToPage:  Text( "Notification"), iconData: Icons.add_alert)
  ];


  //colors
  static Color colorUnSelected = HexColor( ColorProject.greyDark ); //greyDark
  static Color colorSelected = HexColor( ColorProject.black_1 );
  static Color colorBackgroundNavigation = HexColor( ColorProject.blue_fish_front );
  static Color colorBoarderLine = HexColor( ColorProject.blueTransparent); //greyDark

}