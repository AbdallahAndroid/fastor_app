import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:fastor_app/resource/ui/navigation/m/ItemNavigationFastor.dart';
import 'package:fastor_app/resource/ui/navigation/v/NavigationFastor.dart';

extension ItemNavigationFastorView on NavigationFastorState {

  Widget getTabItemView( ItemNavigationFastor item ) {

    //content
    var col =  ColumnTemplate.t(
        width: widget.sizeTab,
        //  height: ToolbarCartView.frameHeight_rowTabsChoose,
        colorBackground: Colors.transparent,
        //  decoration: getBoarder(),
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EmptyView.empty( 0,  DSDimen.space_level_4 /2),
          _iconImage( item.position, item.iconData),

          EmptyView.empty( 0,  DSDimen.space_level_4 /2 ),
          _titleTv(item.position, item.title),

          EmptyView.empty( 0,  DSDimen.space_level_4 /2 ),
          separator(item.position)
        ]);


    //click
    return GestureDetector( child:  col , onTap: () {
      clickOnPosition( item.position, item);
    });
  }


  Widget _iconImage(int position,  IconData icon ) {
    return Icon(
      icon, //Icons.location_city_outlined,    //Icons.local_shipping_outlined,
      size: widget.sizeIcon,
      color: getColorSelectedOrNot( position),
    );
  }


  Widget _titleTv(int position, String title) {
    return TextTemplate.t( title, //"Address",
        levelDS: LevelDS.l3,
        color: getColorSelectedOrNot(position)
    );
  }


}