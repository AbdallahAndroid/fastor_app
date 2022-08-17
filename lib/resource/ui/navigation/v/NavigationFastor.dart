import 'package:flutter/material.dart';

 
import 'package:fastor_app_ui_widget/fastor_app_ui_widget.dart';


import 'package:fastor_app/resource/ui/navigation/m/DataNavigationFastor.dart';
import 'package:fastor_app/resource/ui/navigation/m/ItemNavigationFastor.dart';
import 'package:fastor_app/resource/ui/navigation/m/MapItemToView.dart';
import 'package:fastor_app/resource/ui/navigation/v/views/itemTab/ItemNavigationFastorView.dart';

class NavigationFastor extends StatefulWidget {

  //size
  static double frame_height = 70;
  double sizeTab = 0; //will be calculated automatically
  double sizeIcon = 15;

  //info
  BuildContext contextPage;
  int currentPosition = 1 ;


  NavigationFastor( this.contextPage,   this.currentPosition );

  @override
  NavigationFastorState createState() {
    return NavigationFastorState();
  }


}

class NavigationFastorState extends State<NavigationFastor> {

  //-------------------------------------------------------------------- build

  @override
  Widget build(BuildContext context) {
    calculateSize();

    return getCardView();
  }

  void calculateSize(){
    int sizeTabs = DataNavigationFastor.listItemNavigation.length;
    widget.sizeTab = DeviceTools.getWidth(context ) / sizeTabs;
  }


  Widget rowTabs() {

    List<Widget> list = getListWidgetNavigationTab();

    var row =  RowTemplate.scroll( context,  list );

    return Container( child:  row);
  }

  //-------------------------------------------------------------------- generic tools ui


  Widget getCardView() {
    var radius = BorderRadiusTools.get(
        radius_topLeft: DSDimen.ds_size_corner_level_1 ,
        radius_topRight: DSDimen.ds_size_corner_level_1
    );


    return BoarderHelper.cardViewPhysical(
      child:  rowTabs(),
      elevation_radius_value: 15,
      radiusBorder:  radius,
      colorBackground: DataNavigationFastor.colorBackgroundNavigation,
     // colorLine: DataNavigationFastor.colorBoarderLine
    );
  }


  Color getColorSelectedOrNot(int position ) {
    //case selected
    if( position == widget.currentPosition ) {
      // return HexColor( ColorProject.blue_fish_back);
      return DataNavigationFastor.colorSelected;
    }

    //case not selected
    // return HexColor( ColorProject.greyDark);
    return DataNavigationFastor.colorUnSelected;
  }


  Widget separator(int position){
    return Container( width: widget.sizeTab,
      height: 2,
      color: getColorSelectedOrNot(position ),
    );
  }

  void clickOnPosition(int positionNew , ItemNavigationFastor itemNav ){
    //Log.i( "clickOnPosition() - positionNew: " + positionNew.toString() );

    //click on same position
    if( positionNew == widget.currentPosition ) return;

    //navigate
    var materialPageRoute = MaterialPageRoute(builder: (context) => itemNav.goToPage);
    Navigator.push( widget.contextPage, materialPageRoute);

  }


}


